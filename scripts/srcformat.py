"""Read and write the src/<lang>/ layout described in src/FORMAT.md."""

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent

TASK_FIELDS = ["task_id", "prompt", "declaration", "example_test"]
LANG_TAGS = {"zig": "zig", "c": "c", "go": "go", "cpp": "cpp", "swift": "swift"}
TASK_ID_PREFIX = {"zig": "Zig", "c": "C", "go": "Go", "cpp": "CPP", "swift": "Swift"}
EXT = {"zig": "zig", "c": "c", "go": "go", "cpp": "cpp", "swift": "swift"}

SECTION = re.compile(r"^## (\w+)\n\n```[^\n]*\n(.*?)^```[ \t]*$", re.MULTILINE | re.DOTALL)


def write_task(path, lang_tag, fields):
    parts = []
    for name in TASK_FIELDS:
        value = fields.get(name, "").rstrip("\n")
        tag = "" if name == "task_id" else lang_tag
        body = value + "\n" if value else ""
        if any(l.startswith("```") for l in body.splitlines()):
            raise ValueError(f"{path}: {name} contains a ``` line")
        parts.append(f"## {name}\n\n```{tag}\n{body}```\n")
    Path(path).write_text("\n".join(parts))


def read_task(path):
    """Return the NNNtask.md fields; each value ends with a newline unless empty."""
    text = Path(path).read_text()
    fields = {m.group(1): m.group(2) for m in SECTION.finditer(text)}
    missing = [f for f in TASK_FIELDS if f not in fields]
    if missing:
        raise ValueError(f"{path}: missing section(s) {', '.join(missing)}")
    return fields


def task_files(lang, n):
    d = ROOT / "src" / lang
    ext = EXT[lang]
    return d / f"{n:03d}task.md", d / f"{n:03d}solution.{ext}", d / f"{n:03d}test.{ext}"


def load(lang, n):
    """All record fields for task n of src/<lang>/, per FORMAT.md's field table.

    Raises ValueError when the solution doesn't start with the declaration.
    """
    task_path, sol_path, test_path = task_files(lang, n)
    f = read_task(task_path)
    decl = f["declaration"].rstrip("\n")
    if lang == "cpp":
        # The C++ reference declaration carries #include/using lines; the
        # solution file starts with the signature after them.
        decl = "\n".join(l for l in decl.splitlines()
                         if not l.startswith(("#include", "using namespace"))).strip("\n")
    solution = sol_path.read_text()
    if not solution.startswith(decl):
        raise ValueError(f"{sol_path.name} does not start with the declaration")
    f["canonical_solution"] = solution[len(decl):].removeprefix("\n")
    f["test"] = test_path.read_text()
    return f
