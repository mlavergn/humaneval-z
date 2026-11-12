## task_id

```
Zig/160
```

## prompt

```zig
const std = @import("std");

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
pub fn doAlgebra(allocator: std.mem.Allocator, operator: []const []const u8, operand: []const i64) !i64 {
```

## declaration

```zig
pub fn doAlgebra(allocator: std.mem.Allocator, operator: []const []const u8, operand: []const i64) !i64 {
```

## example_test

```zig
```
