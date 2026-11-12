---
annotations_creators: []
language_creators:
- crowdsourced
- expert-generated
language:
- code
license:
- apache-2.0
multilinguality:
- multilingual
size_categories:
- unknown
source_datasets: []
task_categories:
- text-generation
task_ids:
- language-modeling
pretty_name: HumanEval-X
---

# HumanEval-X

## Dataset Description
[HumanEval-X](https://github.com/THUDM/CodeGeeX) is a benchmark for evaluating the multilingual ability of code generative models. It consists of 820 high-quality human-crafted data samples (each with test cases) in Python, C++, Java, JavaScript, and Go, and can be used for various tasks, such as code generation and translation.

This copy adds three ports of the same 164 problems: Zig, C and Swift (see [Zig, C and Swift subsets](#zig-c-and-swift-subsets)).

## Languages

The dataset contains coding problems in 8 programming languages: Python, C++, Java, JavaScript, Go, Zig, C, and Swift.

## Dataset Structure
To load the dataset you need to specify a subset among the 8 existing languages `[python, cpp, go, java, js, zig, c, swift]`. By default `python` is loaded.

```python
from datasets import load_dataset
load_dataset("THUDM/humaneval-x", "js")

DatasetDict({
    test: Dataset({
        features: ['task_id', 'prompt', 'declaration', 'canonical_solution', 'test', 'example_test'],
        num_rows: 164
    })
})
```

```python
next(iter(data["test"]))
{'task_id': 'JavaScript/0',
 'prompt': '/* Check if in given list of numbers, are any two numbers closer to each other than\n  given threshold.\n  >>> hasCloseElements([1.0, 2.0, 3.0], 0.5)\n  false\n  >>> hasCloseElements([1.0, 2.8, 3.0, 4.0, 5.0, 2.0], 0.3)\n  true\n  */\nconst hasCloseElements = (numbers, threshold) => {\n',
 'declaration': '\nconst hasCloseElements = (numbers, threshold) => {\n',
 'canonical_solution': '  for (let i = 0; i < numbers.length; i++) {\n    for (let j = 0; j < numbers.length; j++) {\n      if (i != j) {\n        let distance = Math.abs(numbers[i] - numbers[j]);\n        if (distance < threshold) {\n          return true;\n        }\n      }\n    }\n  }\n  return false;\n}\n\n',
 'test': 'const testHasCloseElements = () => {\n  console.assert(hasCloseElements([1.0, 2.0, 3.9, 4.0, 5.0, 2.2], 0.3) === true)\n  console.assert(\n    hasCloseElements([1.0, 2.0, 3.9, 4.0, 5.0, 2.2], 0.05) === false\n  )\n  console.assert(hasCloseElements([1.0, 2.0, 5.9, 4.0, 5.0], 0.95) === true)\n  console.assert(hasCloseElements([1.0, 2.0, 5.9, 4.0, 5.0], 0.8) === false)\n  console.assert(hasCloseElements([1.0, 2.0, 3.0, 4.0, 5.0, 2.0], 0.1) === true)\n  console.assert(hasCloseElements([1.1, 2.2, 3.1, 4.1, 5.1], 1.0) === true)\n  console.assert(hasCloseElements([1.1, 2.2, 3.1, 4.1, 5.1], 0.5) === false)\n}\n\ntestHasCloseElements()\n',
 'example_test': 'const testHasCloseElements = () => {\n  console.assert(hasCloseElements([1.0, 2.0, 3.0], 0.5) === false)\n  console.assert(\n    hasCloseElements([1.0, 2.8, 3.0, 4.0, 5.0, 2.0], 0.3) === true\n  )\n}\ntestHasCloseElements()\n'}
 ```


## Data Fields

*   ``task_id``: indicates the target language and ID of the problem. Language is one of ["Python", "Java", "JavaScript", "CPP", "Go", "Zig", "C", "Swift"].
*   ``prompt``: the function declaration and docstring, used for code generation.
*   ``declaration``: only the function declaration, used for code translation. 
*   ``canonical_solution``: human-crafted example solutions.
*   ``test``: hidden test samples, used for evaluation.
*   ``example_test``: public test samples (appeared in prompt), used for evaluation. 

The Go, Zig, C and Swift JSONL files also carry `import`, `docstring` and `test_setup` fields, which the loader doesn't expose (`test_setup` is always empty for Zig, C and Swift).

## Data Splits

Each subset has one split: test.

## Zig, C and Swift subsets

The three ports follow the Go problems (C++ where the Go reference is broken, see `src/BROKEN.md`), porting Go → Zig, then Zig → C and Zig → Swift. Each is edited as source files under `src/<lang>/`, in the layout described in [`src/FORMAT.md`](src/FORMAT.md), and assembled into `data/<lang>/data/humaneval.jsonl`.

| Subset | Toolchain | Notes |
|---|---|---|
| `zig` | Zig 0.17.1 | Allocating functions take a `std.mem.Allocator`; tests use `std.testing.allocator`, so leaks fail. |
| `c` | C11, gcc with `-Wall -Wextra -Werror` | Tests run under AddressSanitizer + UBSan; results are `malloc`'d and freed by the caller; task 162 links `-lcrypto`. |
| `swift` | Swift 6.4.2 (`swift:6.4.2` Docker image) | Tests are top-level `precondition` statements. |

Every task's `test` and `example_test` pass against its `canonical_solution`:

```
scripts/explode.py               # regenerate src/go and src/cpp from their JSONL
scripts/check.py zig             # build and run src/<lang> (go, cpp, zig, c, swift)
scripts/implode.py               # write data/{zig,c,swift}/data/humaneval.jsonl
scripts/check.py zig --jsonl     # build and run the JSONL itself
```

## Citation Information

Refer to https://github.com/THUDM/CodeGeeX.