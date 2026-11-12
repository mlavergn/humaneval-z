## task_id

```
Zig/157
```

## prompt

```zig
const std = @import("std");

// Given the lengths of the three sides of a triangle. Return true if the three
// sides form a right-angled triangle, false otherwise.
// A right-angled triangle is a triangle in which one angle is right angle or
// 90 degree.
// Example:
// rightAngleTriangle(3, 4, 5) == true
// rightAngleTriangle(1, 2, 3) == false
pub fn rightAngleTriangle(a: i64, b: i64, c: i64) bool {
```

## declaration

```zig
pub fn rightAngleTriangle(a: i64, b: i64, c: i64) bool {
```

## example_test

```zig
test "rightAngleTriangle examples" {
    try std.testing.expect(rightAngleTriangle(3, 4, 5));
    try std.testing.expect(!rightAngleTriangle(1, 2, 3));
}
```
