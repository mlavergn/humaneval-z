## task_id

```
C/160
```

## prompt

```c
#include <stdbool.h>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <math.h>

// Given two lists operator, and operand. The first list has basic algebra operations, and
// the second list is a list of integers. Use the two given lists to build the algebric
// expression and return the evaluation of this expression.
//
// The basic algebra operations:
// Addition ( + )
// Subtraction ( - )
// Multiplication ( * )
// Floor division ( // )
// Exponentiation ( ** )
//
// Example:
// operator['+', '*', '-']
// array = [2, 3, 4, 5]
// result = 2 + 3 * 4 - 5
// => result = 9
//
// Note:
// The length of operator list is equal to the length of operand list minus one.
// Operand is a list of of non-negative integers.
// Operator list has at least one operator, and operand list has at least two operands.
long long do_algebra(const char *const *operator, size_t operator_len, const long long *operand, size_t operand_len) {
```

## declaration

```c
long long do_algebra(const char *const *operator, size_t operator_len, const long long *operand, size_t operand_len) {
```

## example_test

```c
```
