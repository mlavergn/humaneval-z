#!/usr/bin/env python3
"""Explode the Go and C++ HumanEval-X JSONL into src/<lang>/ (see src/FORMAT.md).

Writes NNNtask.md, NNNsolution.<ext> and NNNtest.<ext> per task, with the
JSONL fields as-is. These reference trees are generated; don't edit them.
Re-running regenerates identical output.
"""

import json
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from srcformat import ROOT, write_task  # noqa: E402

LANGS = {"go": "go", "cpp": "cpp"}


def strip_includes(text):
    """C++ declarations carry #include/using lines; the signature follows them."""
    return "\n".join(
        l for l in text.splitlines()
        if not l.startswith("#include") and not l.startswith("using namespace")
    )


def main():
    for lang, ext in LANGS.items():
        out = ROOT / "src" / lang
        out.mkdir(parents=True, exist_ok=True)
        path = ROOT / "data" / lang / "data" / "humaneval.jsonl"
        records = [json.loads(line) for line in path.open()]
        for r in records:
            n = int(r["task_id"].split("/")[1])
            decl = r["declaration"].strip("\n")
            write_task(out / f"{n:03d}task.md", ext, {
                "task_id": r["task_id"],
                "prompt": r["prompt"],
                "declaration": decl,
                "example_test": r["example_test"],
            })
            sig = strip_includes(decl).strip("\n") if lang == "cpp" else decl
            (out / f"{n:03d}solution.{ext}").write_text(
                sig + "\n" + r["canonical_solution"].rstrip() + "\n")
            test = r["test"]
            if r.get("test_setup"):
                test = r["test_setup"].rstrip() + "\n\n" + test
            (out / f"{n:03d}test.{ext}").write_text(test.rstrip() + "\n")
        print(f"{lang}: wrote {len(records)} tasks to src/{lang}")


if __name__ == "__main__":
    main()
