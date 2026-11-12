## task_id

```
Zig/144
```

## prompt

```zig
const std = @import("std");

// Your task is to implement a function that will Simplify the expression
// x * n. The function returns true if x * n evaluates to a whole number and false
// otherwise. Both x and n, are string representation of a fraction, and have the following format,
// <numerator>/<denominator> where both numerator and denominator are positive whole numbers.
//
// You can assume that x, and n are valid fractions, and do not have zero as denominator.
//
// simplify("1/5", "5/1") = true
// simplify("1/6", "2/1") = false
// simplify("7/10", "10/2") = false
pub fn simplify(x: []const u8, n: []const u8) bool {
```

## declaration

```zig
pub fn simplify(x: []const u8, n: []const u8) bool {
```

## example_test

```zig
test "simplify examples" {
    try std.testing.expect(simplify("1/5", "5/1"));
    try std.testing.expect(!simplify("1/6", "2/1"));
    try std.testing.expect(!simplify("7/10", "10/2"));
}
```
