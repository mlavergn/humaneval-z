# Source format

`src/<lang>/` holds the HumanEval-X records for one language as editable files: three files per task. `scripts/implode.py` turns a tree back into `data/<lang>/data/humaneval.jsonl`, and `scripts/check.py` compiles and runs it.

| Tree | Role |
|---|---|
| `src/zig/`, `src/c/` | Source of truth for the new eval sets. Edit these. |
| `src/swift/` | Source of truth for the Swift eval set. Edit this. |
| `src/go/`, `src/cpp/` | Generated from the existing JSONL by `scripts/explode.py`, as porting references. Don't edit. |

## Layout

```
src/<lang>/
  000task.md
  000solution.<ext>
  000test.<ext>
  001task.md
  ...
  163test.<ext>
```

- The leading three digits are the task number, zero-padded so each task's files sort together.
- `<ext>` is the language's source extension: `zig`, `c`, `go`, `cpp` (and `swift`).

## Files and fields

The files follow each field's role in an evaluation:

| File | Role | Fields |
|---|---|---|
| `NNNtask.md` | What the model is given, plus metadata | `task_id`, `prompt`, `declaration`, `example_test` |
| `NNNsolution.<ext>` | The reference answer | `canonical_solution` |
| `NNNtest.<ext>` | The grader | `test` |

Every field of the record, and where it comes from:

| Field | Source |
|---|---|
| `task_id` | `NNNtask.md`; must equal `<Lang>/<N>` (folder + number, no padding, e.g. `Zig/16`) |
| `prompt` | `NNNtask.md` |
| `declaration` | `NNNtask.md`; must be the end of `prompt` and the start of `NNNsolution.<ext>` |
| `example_test` | `NNNtask.md`; may be empty |
| `canonical_solution` | `NNNsolution.<ext>` with the leading `declaration` removed |
| `test` | `NNNtest.<ext>`, verbatim |
| `import` | Derived: the leading import lines of `prompt` |
| `docstring` | Derived: the comment block directly above `declaration` in `prompt` |
| `test_setup` | Always `""`. Any setup a test needs goes at the top of `NNNtest.<ext>` |

## `NNNtask.md`

There are four `##` sections in this order, each holding one fenced block. A field's value is the block's contents plus a trailing newline; an empty block means an empty field. Field text must not contain a line starting with ```` ``` ````.

````markdown
## task_id

```
Zig/16
```

## prompt

```zig
const std = @import("std");

// Given a string, find out how many distinct characters (regardless of case) does it consist of
// >>> countDistinctCharacters("xyzXYZ")
// 3
// >>> countDistinctCharacters("Jerry")
// 4
pub fn countDistinctCharacters(str: []const u8) i64 {
```

## declaration

```zig
pub fn countDistinctCharacters(str: []const u8) i64 {
```

## example_test

```zig
test "countDistinctCharacters examples" {
    try std.testing.expectEqual(3, countDistinctCharacters("xyzXYZ"));
    try std.testing.expectEqual(4, countDistinctCharacters("Jerry"));
}
```
````

`prompt` keeps this order so `import` and `docstring` can be derived from it:
1. Imports.
2. Helper functions the task provides, if any (e.g. `isPalindrome` in task 10).
3. The docstring comment block.
4. `declaration`, as the last line(s).

Incomplete code (`prompt` and `declaration` both end on an open `{`) lives only in Markdown, so editors and language servers never try to "fix" it.

## `NNNsolution.<ext>`

This file holds the complete target function: `declaration` followed by the body. It is syntactically complete, so formatting it is safe.
- Helpers and types the task *provides* belong to `prompt`.
- Anything the solution itself defines stays here, after the function: for example Go/72's `isPalindrome`, or Zig/148's planet table.

`canonical_solution` is this file minus `declaration` and the newline that follows it.

## `NNNtest.<ext>`

This file holds the hidden test cases, verbatim as the `test` field, and is syntactically complete. It isn't a superset of `example_test`: in the Go data, 57 tasks have example cases that don't appear in `test`.

## Evaluation program

A task is checked by building and running:

```
prompt + canonical_solution + "\n" + test
```

and the same again with `example_test` in place of `test`.

## Language rules

**Zig**
- `prompt` starts with `const std = @import("std");`, even when the solution doesn't use it. Tests rely on it for `std.testing`, so `test_setup` stays empty, and a second `const std` would be a redeclaration error.
- Functions are `pub fn` and named in `camelCase`.
- A function that allocates takes `allocator: std.mem.Allocator` as its first parameter and returns an error union (`![]T`). This applies even when it only allocates temporarily (e.g. `median` sorting a copy).
- Tests pass `std.testing.allocator` and free every result with it, so a leak in the solution or the test fails the task.

**C** (C11, built with `gcc -std=c11 -Wall -Wextra -Werror` and AddressSanitizer + UBSan, so leaks and undefined behaviour fail a test)
- `prompt` starts with the same standard headers for every task: `stdbool.h`, `stddef.h`, `stdio.h`, `stdlib.h`, `string.h`, `ctype.h` and `math.h`.
- Names are `snake_case`. Task-specific types (`typedef struct`/`enum`) are defined in `prompt`.
- Types: integers are `long long`, floats `double`, lengths `size_t`, `bool` from `<stdbool.h>`.
- Inputs:
  - A string is `const char *` (NUL-terminated).
  - An array is `const T *xs, size_t xs_len`.
  - A string array is `const char *const *xs, size_t xs_len`.
- Returned strings and arrays are always `malloc`'d, and the caller frees them.
  - An array's length comes back through a trailing `size_t *out_len`.
  - A `char **` result also has each element freed.
  - On allocation failure, the function returns `NULL`.
- A fixed-size result, such as a pair, is written to a caller-provided out-array (`long long out[2]`).
- "No result" (Zig's optionals):
  - A pointer result is `NULL`.
  - Otherwise the function returns `bool` (`false` = none) and writes the value through an out-parameter.
- `NNNtest.c` is a complete `int main(void)`: `#undef NDEBUG`, its own `#include`s, then `assert`s. Small `static` helpers named `check_*` may precede `main`.

**Swift** (Swift 6.4.2 via the `swift:6.4.2` Docker image, debug build, so `precondition` and integer overflow trap)
- `prompt` starts with `import Foundation`. Docstrings use `///`.
- Types: `Int`, `Double`, `String`, `Character`, `Bool`, `[T]`. Functions don't throw: an impossible input (e.g. an unknown operator in task 160) is a `fatalError`.
- Names are `lowerCamelCase`.
  - Argument labels are the Zig parameter names in `lowerCamelCase`.
  - The first label is left out (`_`) when the function name already says it, e.g. `isPalindrome(_ text:)`.
- "No result" is an optional (`Int?`, `String?`).
- Dynamic types are `enum`s with associated values, defined in `prompt` (`Value`, `SplitResult`).
- Fixed-size pairs are tuples (`(Int, Int)`).
- Map-like tasks use dictionaries (95 takes `[String: String]`, 111 returns `[Character: Int]`).
- `NNNtest.swift` is top-level code: `precondition(...)` statements, optionally preceded by small helpers.

**Go, C++ (reference trees)**
- These are generated from the JSONL as-is.
- A non-empty Go `test_setup` (`package main` plus test imports) is placed at the top of `NNNtest.go`. The checker reorders it when building the program.
