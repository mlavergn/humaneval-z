## task_id

```
Zig/20
```

## prompt

```zig
const std = @import("std");

// From a supplied list of numbers (of length at least two) select and return two that are the closest to each
// other and return them in order (smaller number, larger number).
// >>> findClosestElements(&.{ 1.0, 2.0, 3.0, 4.0, 5.0, 2.2 })
// { 2.0, 2.2 }
// >>> findClosestElements(&.{ 1.0, 2.0, 3.0, 4.0, 5.0, 2.0 })
// { 2.0, 2.0 }
pub fn findClosestElements(numbers: []const f64) [2]f64 {
```

## declaration

```zig
pub fn findClosestElements(numbers: []const f64) [2]f64 {
```

## example_test

```zig
test "findClosestElements examples" {
    try std.testing.expectEqual([2]f64{ 2.0, 2.2 }, findClosestElements(&[_]f64{ 1.0, 2.0, 3.0, 4.0, 5.0, 2.2 }));
    try std.testing.expectEqual([2]f64{ 2.0, 2.0 }, findClosestElements(&[_]f64{ 1.0, 2.0, 3.0, 4.0, 5.0, 2.0 }));
}
```
