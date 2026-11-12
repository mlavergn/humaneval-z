## task_id

```
Zig/47
```

## prompt

```zig
const std = @import("std");

// Return Median of elements in the list l.
// >>> median(allocator, &.{ 3, 1, 2, 4, 5 })
// 3.0
// >>> median(allocator, &.{ -10, 4, 6, 1000, 10, 20 })
// 15.0
pub fn median(allocator: std.mem.Allocator, l: []const i64) !f64 {
```

## declaration

```zig
pub fn median(allocator: std.mem.Allocator, l: []const i64) !f64 {
```

## example_test

```zig
test "median examples" {
    try std.testing.expectEqual(3.0, try median(std.testing.allocator, &[_]i64{ 3, 1, 2, 4, 5 }));
    try std.testing.expectEqual(8.0, try median(std.testing.allocator, &[_]i64{ -10, 4, 6, 1000, 10, 20 }));
}
```
