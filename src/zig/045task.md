## task_id

```
Zig/45
```

## prompt

```zig
const std = @import("std");

// Given length of a side and high return area for a triangle.
// >>> triangleArea(5, 3)
// 7.5
pub fn triangleArea(a: f64, h: f64) f64 {
```

## declaration

```zig
pub fn triangleArea(a: f64, h: f64) f64 {
```

## example_test

```zig
test "triangleArea examples" {
    try std.testing.expectEqual(7.5, triangleArea(5, 3));
}
```
