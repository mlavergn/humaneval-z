#!/usr/bin/env python3
"""Implode src/<lang>/ (see src/FORMAT.md) into data/<lang>/data/humaneval.jsonl.

Usage: scripts/implode.py [zig] [c] [swift]   (default: all three)

Records use the Go schema's 9 fields. `import` and `docstring` are derived from
`prompt`, and `test_setup` is always "". Re-running regenerates identical output.
Check the result with: scripts/check.py <lang> --jsonl
"""

import json
import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from srcformat import ROOT, load  # noqa: E402

LANGS = ["zig", "c", "swift"]
FIELDS = ["task_id", "prompt", "import", "docstring", "declaration",
          "canonical_solution", "test", "test_setup", "example_test"]
IMPORT_LINE = {
    "zig": re.compile(r"^const \w+ = @import\("),
    "c": re.compile(r"^#include\b"),
    "swift": re.compile(r"^import \w+"),
}


def derive_import(lang, prompt):
    """The leading import lines of the prompt."""
    lines = []
    for line in prompt.splitlines():
        if IMPORT_LINE[lang].match(line) or (lines and not line.strip()):
            lines.append(line)
        else:
            break
    while lines and not lines[-1].strip():
        lines.pop()
    return "\n".join(lines) + "\n" if lines else ""


def derive_docstring(prompt, declaration):
    """The comment block directly above the declaration, markers included."""
    lines = prompt.rstrip("\n").splitlines()
    decl_lines = declaration.rstrip("\n").splitlines()
    above = lines[: len(lines) - len(decl_lines)]
    i = len(above)
    while i > 0 and above[i - 1].lstrip().startswith("//"):
        i -= 1
    return "\n".join(above[i:]) + "\n" if i < len(above) else ""


def record(lang, n):
    f = load(lang, n)
    out = {
        "task_id": f["task_id"].strip(),
        "prompt": f["prompt"],
        "import": derive_import(lang, f["prompt"]),
        "docstring": derive_docstring(f["prompt"], f["declaration"]),
        "declaration": f["declaration"],
        "canonical_solution": f["canonical_solution"],
        "test": f["test"],
        "test_setup": "",
        "example_test": f["example_test"],
    }
    return {k: out[k] for k in FIELDS}


def main():
    langs = sys.argv[1:] or LANGS
    for lang in langs:
        if lang not in LANGS:
            sys.exit(f"unknown language {lang!r}; expected one of {LANGS}")
        records = [record(lang, n) for n in range(164)]
        path = ROOT / "data" / lang / "data" / "humaneval.jsonl"
        path.parent.mkdir(parents=True, exist_ok=True)
        with path.open("w") as out:
            for r in records:
                out.write(json.dumps(r, ensure_ascii=False) + "\n")
        print(f"{lang}: wrote {len(records)} records to {path.relative_to(ROOT)}")


if __name__ == "__main__":
    main()
