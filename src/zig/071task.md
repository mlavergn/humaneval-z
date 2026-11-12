## task_id

```
Zig/71
```

## prompt

```zig
const std = @import("std");

// Given the lengths of the three sides of a triangle. Return the area of
// the triangle rounded to 2 decimal points if the three sides form a valid triangle.
// Otherwise return -1
// Three sides make a valid triangle when the sum of any two sides is greater
// than the third side.
// Example:
// triangleArea(3, 4, 5) == 6.00
// triangleArea(1, 2, 10) == -1
pub fn triangleArea(a: f64, b: f64, c: f64) f64 {
```

## declaration

```zig
pub fn triangleArea(a: f64, b: f64, c: f64) f64 {
```

## example_test

```zig
test "triangleArea examples" {
    try std.testing.expectEqual(6.00, triangleArea(3, 4, 5));
    try std.testing.expectEqual(-1, triangleArea(1, 2, 10));
}
```
