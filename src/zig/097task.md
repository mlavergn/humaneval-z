## task_id

```
Zig/97
```

## prompt

```zig
const std = @import("std");

// Complete the function that takes two integers and returns
// the product of their unit digits.
// Assume the input is always valid.
// Examples:
// multiply(148, 412) should return 16.
// multiply(19, 28) should return 72.
// multiply(2020, 1851) should return 0.
// multiply(14,-15) should return 20.
pub fn multiply(a: i64, b: i64) i64 {
```

## declaration

```zig
pub fn multiply(a: i64, b: i64) i64 {
```

## example_test

```zig
test "multiply examples" {
    try std.testing.expectEqual(16, multiply(148, 412));
    try std.testing.expectEqual(72, multiply(19, 28));
    try std.testing.expectEqual(0, multiply(2020, 1851));
    try std.testing.expectEqual(20, multiply(14, -15));
}
```
