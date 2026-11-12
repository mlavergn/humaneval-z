#!/usr/bin/env python3
"""Check the src/<lang>/ trees described in src/FORMAT.md.

For each task, build and run `prompt + canonical_solution + test` and the same
again with `example_test` (skipped when empty). Source trees (zig, c) must also
pass the FORMAT.md rules.

Usage: scripts/check.py {go,cpp,zig,c,swift} [--only N ...] [--keep DIR] [--report] [--jsonl] [-v]

With --jsonl, tasks are read from data/<lang>/data/humaneval.jsonl (as written
by scripts/implode.py) instead of src/<lang>/, and the records' schema is checked.

Programs are assembled in a temporary build dir (or --keep DIR). With --report,
failures are written to src/BROKEN.md (reference trees only).
"""

import argparse
import json
import os
import re
import subprocess
import sys
import tempfile
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from srcformat import ROOT, TASK_ID_PREFIX, load  # noqa: E402

TIMEOUT = 20
SOURCE_TREES = {"zig", "c", "swift"}

# Upstream bugs that a single run can miss. Always reported as failures.
KNOWN_BROKEN = {
    "go": {
        50: "wrong: EncodeShift/DecodeShift return the input unchanged; the "
            "test only checks decode(encode(s)) == s, so it passes",
        95: "flaky: canonical solution breaks after the 2nd key and Go map "
            "order is random (fails ~1 in 3 runs)",
    },
}


def programs(fields):
    """(kind, source) pairs to build: the hidden test, then the examples."""
    base = fields["prompt"] + fields["canonical_solution"] + "\n"
    out = [("test", base + fields["test"])]
    if fields["example_test"].strip():
        out.append(("example", base + fields["example_test"]))
    return out


# ---------------------------------------------------------------- format


def format_errors(lang, n, f):
    errors = []
    if f["task_id"].strip() != f"{TASK_ID_PREFIX[lang]}/{n}":
        errors.append(f"task_id {f['task_id'].strip()!r} != {TASK_ID_PREFIX[lang]}/{n}")
    decl = f["declaration"].rstrip("\n")
    if not f["prompt"].rstrip().endswith(decl.rstrip()):
        errors.append("prompt does not end with the declaration")
    else:
        above = f["prompt"].rstrip()[: -len(decl.rstrip())].rstrip("\n").splitlines()
        if not above or not above[-1].lstrip().startswith("//"):
            errors.append("no docstring comment directly above the declaration")
    if lang == "zig" and not f["prompt"].startswith('const std = @import("std");'):
        errors.append('prompt must start with const std = @import("std");')
    if lang == "swift" and not f["prompt"].startswith("import Foundation\n"):
        errors.append("prompt must start with import Foundation")
    if lang == "c" and not f["prompt"].startswith(C_PRELUDE):
        errors.append("prompt must start with the standard C headers (see FORMAT.md)")
    return errors


C_PRELUDE = "".join(f"#include <{h}>\n" for h in
                    ["stdbool.h", "stddef.h", "stdio.h", "stdlib.h", "string.h", "ctype.h", "math.h"])


# ---------------------------------------------------------------- JSONL

JSONL_FIELDS = ["task_id", "prompt", "import", "docstring", "declaration",
                "canonical_solution", "test", "test_setup", "example_test"]


def load_jsonl(lang):
    """Records of data/<lang>/data/humaneval.jsonl by task number, plus file-level errors."""
    path = ROOT / "data" / lang / "data" / "humaneval.jsonl"
    records = [json.loads(line) for line in path.open()]
    errors = []
    if len(records) != 164:
        errors.append(f"{len(records)} records, expected 164")
    by_num = {}
    for i, r in enumerate(records):
        if list(r) != JSONL_FIELDS:
            errors.append(f"record {i}: fields {list(r)}")
        by_num[i] = r
    return by_num, errors


def jsonl_errors(r):
    errors = []
    if not r["prompt"].startswith(r["import"]):
        errors.append("prompt does not start with import")
    if r["docstring"] and r["docstring"] not in r["prompt"]:
        errors.append("docstring not in prompt")
    if r["test_setup"] != "":
        errors.append("test_setup is not empty")
    return errors


# ---------------------------------------------------------------- Go

GO_MOD = """module check

go 1.21

require github.com/stretchr/testify v1.9.0
"""

# Packages a program may use without importing them (e.g. Go/59 and Go/75 call
# math.* with no import; example tests carry no test_setup).
GO_KNOWN = ["math", "strings", "strconv", "sort", "fmt", "bytes", "regexp",
            "unicode", "math/rand", "crypto/md5", "encoding/hex", "time",
            "testing", "github.com/stretchr/testify/assert"]

GO_IMPORT = re.compile(r'^import\s*\((.*?)^\)\s*$|^import\s+((?:\w+\s+)?"[^"]+")\s*$',
                       re.MULTILINE | re.DOTALL)


def go_program(src):
    """Hoist package/imports from a concatenated program (a mini goimports).

    Dedupes, drops unused and adds missing imports: the raw concatenation of
    test_setup + prompt imports fails to build for ~10 tasks.
    """
    specs = []
    for m in GO_IMPORT.finditer(src):
        for s in re.finditer(r'(?:(\w+)\s+)?"([^"]+)"', m.group(1) or m.group(2)):
            if (s.group(1) or "", s.group(2)) not in specs:
                specs.append((s.group(1) or "", s.group(2)))
    body = GO_IMPORT.sub("", src)
    body = re.sub(r"^package \w+\s*$", "", body, flags=re.MULTILINE)
    for path in GO_KNOWN:
        if all(p != path for _, p in specs):
            specs.append(("", path))
    # Look for pkg.Name uses in code only: docstrings mention words like "strings."
    code = re.sub(r'//.*|"(?:\\.|[^"\\\n])*"|`[^`]*`', "", body)
    keep, names = [], set()
    for alias, path in specs:
        name = alias or path.rsplit("/", 1)[-1]
        if name not in names and re.search(rf"\b{re.escape(name)}\.", code):
            keep.append((alias, path))
            names.add(name)
    lines = [f'    {a + " " if a else ""}"{p}"' for a, p in keep]
    return "package main\n\nimport (\n" + "\n".join(lines) + "\n)\n" + body


def run_go(tasks, build):
    (build / "go.mod").write_text(GO_MOD)
    for n, f in tasks.items():
        for kind, src in programs(f):
            d = build / f"t{n:03d}{kind}"
            d.mkdir(exist_ok=True)
            (d / "main_test.go").write_text(go_program(src))
    tidy = subprocess.run(["go", "mod", "tidy"], cwd=build, capture_output=True, text=True)
    if tidy.returncode:
        sys.exit("go mod tidy failed:\n" + tidy.stderr)
    proc = subprocess.run(["go", "test", "-json", "-count=1", "./..."],
                          cwd=build, capture_output=True, text=True)
    status, logs = {}, {}
    for line in proc.stdout.splitlines():
        try:
            ev = json.loads(line)
        except json.JSONDecodeError:
            continue
        pkg = ev.get("Package") or (ev.get("ImportPath") or "").split(" ")[0]
        m = re.fullmatch(r"check/t(\d{3})(test|example)", pkg)
        if not m:
            continue
        key = (int(m.group(1)), m.group(2))
        if ev.get("Output"):
            logs.setdefault(key, []).append(ev["Output"])
        if "Test" not in ev and ev.get("Action") in ("pass", "fail"):
            status[key] = ev["Action"] == "pass"
        if ev.get("Action") == "build-fail":
            status[key] = False
    for m in re.finditer(r"^# check/t(\d{3})(test|example)\n((?:(?!# check/).*\n)*)",
                         proc.stderr, re.MULTILINE):
        logs.setdefault((int(m.group(1)), m.group(2)), []).append(m.group(3))
    return {k: (v, "".join(logs.get(k, []))) for k, v in status.items()}


# ---------------------------------------------------------------- C++ / Zig


def run_each(tasks, build, build_and_run):
    jobs = [(n, kind, src) for n, f in tasks.items() for kind, src in programs(f)]

    def one(job):
        n, kind, src = job
        return (n, kind), build_and_run(build, f"t{n:03d}{kind}", src)

    with ThreadPoolExecutor(os.cpu_count() or 2) as pool:
        return dict(pool.map(one, jobs))


def run_binary(exe):
    try:
        run = subprocess.run([str(exe)], capture_output=True, text=True, timeout=TIMEOUT)
    except subprocess.TimeoutExpired:
        return False, "timeout"
    return run.returncode == 0, run.stdout + run.stderr


def cpp_one(build, name, src):
    path, exe = build / f"{name}.cpp", build / name
    path.write_text(src)
    # -lcrypto: CPP/162 uses OpenSSL MD5 (as in the upstream CodeGeeX harness).
    cc = subprocess.run(["g++", "-std=c++17", "-o", str(exe), str(path), "-lcrypto"],
                        capture_output=True, text=True)
    if cc.returncode:
        return False, "compile error:\n" + cc.stderr
    return run_binary(exe)


# refAllDecls also compiles pub declarations no test references.
ZIG_EPILOGUE = "\ntest {\n    std.testing.refAllDecls(@This());\n}\n"


def zig_one(build, name, src):
    path = build / f"{name}.zig"
    path.write_text(src + ZIG_EPILOGUE)
    try:
        cc = subprocess.run(["zig", "test", str(path), "--cache-dir", str(build / "cache")],
                            capture_output=True, text=True, timeout=300)
    except subprocess.TimeoutExpired:
        return False, "timeout"
    return cc.returncode == 0, cc.stdout + cc.stderr


def c_one(build, name, src):
    path, exe = build / f"{name}.c", build / name
    path.write_text(src)
    # ASan/UBSan: leaks (including unfreed results in tests) and UB fail the run.
    cc = subprocess.run(["gcc", "-std=c11", "-Wall", "-Wextra", "-Werror",
                         "-fsanitize=address,undefined", "-fno-sanitize-recover=all",
                         "-fno-omit-frame-pointer", "-o", str(exe), str(path),
                         "-lcrypto", "-lm"], capture_output=True, text=True)
    if cc.returncode:
        return False, "compile error:\n" + cc.stderr
    return run_binary(exe)


SWIFT_IMAGE = "swift:6.4.2"

# Inside one container: compile and run every tNNN*.swift in parallel, writing
# <name>.status (exit code) and <name>.log for each.
SWIFT_SCRIPT = r"""
ls t*.swift | sed 's/\.swift$//' | xargs -P "$JOBS" -I{} sh -c '
  if swiftc {}.swift -o {}.bin > {}.log 2>&1; then
    timeout %d ./{}.bin >> {}.log 2>&1; echo $? > {}.status
  else
    echo compile > {}.status
  fi'
""" % TIMEOUT


def run_swift(tasks, build):
    names = {}
    for n, f in tasks.items():
        for kind, src in programs(f):
            name = f"t{n:03d}{kind}"
            (build / f"{name}.swift").write_text(src)
            names[name] = (n, kind)
    (build / "run.sh").write_text(SWIFT_SCRIPT)
    proc = subprocess.run(
        ["docker", "run", "--rm", "--user", f"{os.getuid()}:{os.getgid()}",
         "-e", "HOME=/work", "-e", f"JOBS={os.cpu_count() or 2}",
         "-v", f"{build}:/work", "-w", "/work", SWIFT_IMAGE, "sh", "run.sh"],
        capture_output=True, text=True)
    if proc.returncode:
        sys.exit("docker run failed:\n" + proc.stderr)
    out = {}
    for name, key in names.items():
        status = (build / f"{name}.status").read_text().strip() if (build / f"{name}.status").exists() else "missing"
        log = (build / f"{name}.log").read_text() if (build / f"{name}.log").exists() else ""
        if status == "compile":
            log = "compile error:\n" + log
        out[key] = (status == "0", log)
    return out


RUNNERS = {
    "go": run_go,
    "cpp": lambda tasks, build: run_each(tasks, build, cpp_one),
    "zig": lambda tasks, build: run_each(tasks, build, zig_one),
    "c": lambda tasks, build: run_each(tasks, build, c_one),
    "swift": run_swift,
}


# ---------------------------------------------------------------- report


def first_error(log):
    lines = [l.strip() for l in log.splitlines() if l.strip()]
    first = next((l for l in lines if "error:" in l and not l.endswith("compile error:")),
                 lines[0] if lines else "")
    return re.sub(r"^(\[\w+\] )?\S*/t\d+\w*\.\w+:", r"\1", first)[:160]  # drop temp path


def write_report(lang, results):
    path = ROOT / "src" / "BROKEN.md"
    text = path.read_text() if path.exists() else (
        "# Reference failures\n\n"
        "Generated by `scripts/check.py --report`. Tasks whose Go reference fails "
        "are ported from C++ instead.\n"
    )
    header = f"## {lang}"
    failed = sorted(n for n, (ok, _) in results.items() if not ok)
    body = [header, "", f"{len(results) - len(failed)}/{len(results)} pass.", ""]
    body += [f"- {n}: {first_error(results[n][1])}" for n in failed]
    section = "\n".join(body).rstrip() + "\n"
    pattern = re.compile(rf"^{re.escape(header)}\n.*?(?=^## |\Z)", re.MULTILINE | re.DOTALL)
    if pattern.search(text):
        text = pattern.sub(section + "\n", text).rstrip() + "\n"
    else:
        text = text.rstrip() + "\n\n" + section
    path.write_text(text)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("lang", choices=sorted(RUNNERS))
    ap.add_argument("--only", type=int, nargs="+")
    ap.add_argument("--keep", type=Path, help="build dir to keep (default: temp)")
    ap.add_argument("--report", action="store_true", help="update src/BROKEN.md")
    ap.add_argument("--jsonl", action="store_true", help="check data/<lang>/data/humaneval.jsonl")
    ap.add_argument("-v", "--verbose", action="store_true", help="print failure logs")
    args = ap.parse_args()
    nums = args.only or list(range(164))

    if args.jsonl:
        records, file_errors = load_jsonl(args.lang)
        for e in file_errors:
            print(f"JSONL: {e}")
        if file_errors:
            sys.exit(1)

    results, tasks = {}, {}
    for n in nums:
        try:
            f = dict(records[n]) if args.jsonl else load(args.lang, n)
        except (OSError, ValueError, KeyError) as e:
            results[n] = (False, f"format error: {e}")
            continue
        errors = format_errors(args.lang, n, f) if args.lang in SOURCE_TREES else []
        if args.jsonl:
            errors += jsonl_errors(f)
        if errors:
            results[n] = (False, "format error: " + "; ".join(errors))
            continue
        tasks[n] = f

    def run(build):
        return RUNNERS[args.lang](tasks, build) if tasks else {}

    if args.keep:
        args.keep.mkdir(parents=True, exist_ok=True)
        runs = run(args.keep.resolve())
    else:
        with tempfile.TemporaryDirectory() as tmp:
            runs = run(Path(tmp))

    for n, f in tasks.items():
        kinds = [k for k, _ in programs(f)]
        outcome = [runs.get((n, k), (False, "no result")) for k in kinds]
        ok = all(o for o, _ in outcome)
        log = "\n".join(f"[{k}] {l}" for k, (o, l) in zip(kinds, outcome) if not o)
        results[n] = (ok, log)

    for n, why in KNOWN_BROKEN.get(args.lang, {}).items():
        if n in results:
            results[n] = (False, why + "\n" + results[n][1])
    failed = sorted(n for n, (ok, _) in results.items() if not ok)
    for n in failed:
        print(f"FAIL {args.lang}/{n}")
        if args.verbose:
            print("  " + results[n][1].strip().replace("\n", "\n  "))
    print(f"{args.lang}: {len(nums) - len(failed)}/{len(nums)} pass")
    if args.report and args.lang not in SOURCE_TREES:
        write_report(args.lang, results)
    sys.exit(1 if failed else 0)


if __name__ == "__main__":
    main()
