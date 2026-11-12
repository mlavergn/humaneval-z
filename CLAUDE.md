# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

A local fork of the Hugging Face dataset repo for HumanEval-X (`origin` = huggingface.co/datasets/zai-org/humaneval-x). It holds a `datasets` loading script (`humaneval-x.py`), a README with HF YAML metadata, and one JSONL file per language at `data/<lang>/data/humaneval.jsonl`, each with 164 records.

This fork adds Zig, C and Swift ports of the 164 problems.

**Keep all work local. Never push to `origin`.**
- Leave the original five subsets (`python`, `cpp`, `go`, `java`, `js`) unchanged; their data is upstream's.
- Git (commits, branches) is handled by the user. Don't run git commands unless asked.

## Source trees and workflow

The ports are edited as source files, not as JSONL. The layout, field mapping and per-language conventions are in `src/FORMAT.md`: @src/FORMAT.md

- **Source of truth:** `src/zig/`, `src/c/` and `src/swift/`. Never hand-edit `data/{zig,c,swift}/data/humaneval.jsonl`.
- **Generated references:** `src/go/` and `src/cpp/` come from the original JSONL via `scripts/explode.py`. Don't edit them.
- **After any change to a source tree:**
  1. `scripts/check.py <lang>`: builds and runs every task's `test` and `example_test`; `--only N ...` runs a subset, `-v` prints logs.
  2. `scripts/implode.py`: rewrites the JSONL.
  3. `scripts/check.py <lang> --jsonl`: checks the JSONL itself.
- **Porting chain:** Go → Zig → C and Swift. Tasks 50 and 95 come from C++, because the Go references are broken (`src/BROKEN.md`).
  - A semantic fix in Zig must also be made in C and Swift.
  - Record each fix in the "Carry-overs" section of `src/c/REVIEW.md` and `src/swift/REVIEW.md`.
- **Review status:** `src/<lang>/REVIEW.md` has one checkbox per task, plus notes wherever a port deliberately differs from Go.

## Toolchains and checker gotchas

- **Zig 0.17.1** (local snap). Its std API differs from older Zig:
  - `ArrayList` is unmanaged: pass the allocator to `append`/`toOwnedSlice`/`deinit`, and start from `.empty`.
  - `std.mem.indexOf` → `std.mem.find`.
  - There's no `**` array-repeat operator: use `@splat`.
  - Check signatures in `/snap/zig/current/lib/std` rather than from memory.
- **C:** gcc with `-std=c11 -Wall -Wextra -Werror` and ASan/UBSan, linked with `-lcrypto -lm`.
  - Solutions can't define helper functions before the declaration, so helpers are inlined.
  - Unused `static` helpers in tests fail `-Werror`.
- **Swift 6.4.2:** runs only in Docker (`swift:6.4.2`; no local toolchain). `check.py swift` starts one container per run.
- **Go:**
  - The checker merges imports itself, because a raw `test_setup + prompt` concatenation fails to build for ~10 tasks.
  - Go/95 is flaky, so `check.py` always reports it as broken.
- **C++:** tasks 22 and 137 need Boost, which isn't installed. Those are expected failures.

## Loader gotchas (`humaneval-x.py`)

- Adding a language needs **both** a `HumanEvalXConfig` in `BUILDER_CONFIGS` **and** a branch in the `_split_generators` if/elif chain. Without the branch the method silently returns `None`.
- `_info`/`_generate_examples` expose only the 6 core fields. `import`, `docstring` and `test_setup` (Go/Zig/C/Swift) and `text` (Python/Java) are in the JSONL but dropped on load.
- `datasets` isn't installed locally, so test loader changes with a small stub module.
