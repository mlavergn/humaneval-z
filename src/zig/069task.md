## task_id

```
Zig/69
```

## prompt

```zig
const std = @import("std");

// You are given a non-empty list of positive integers. Return the greatest integer that is greater than
// zero, and has a frequency greater than or equal to the value of the integer itself.
// The frequency of an integer is the number of times it appears in the list.
// If no such a value exist, return -1.
// Examples:
// search(allocator, [4, 1, 2, 2, 3, 1]) == 2
// search(allocator, [1, 2, 2, 3, 3, 3, 4, 4, 4]) == 3
// search(allocator, [5, 5, 4, 4, 4]) == -1
pub fn search(allocator: std.mem.Allocator, lst: []const i64) !i64 {
```

## declaration

```zig
pub fn search(allocator: std.mem.Allocator, lst: []const i64) !i64 {
```

## example_test

```zig
test "search examples" {
    try std.testing.expectEqual(2, try search(std.testing.allocator, &[_]i64{ 4, 1, 2, 2, 3, 1 }));
    try std.testing.expectEqual(3, try search(std.testing.allocator, &[_]i64{ 1, 2, 2, 3, 3, 3, 4, 4, 4 }));
    try std.testing.expectEqual(-1, try search(std.testing.allocator, &[_]i64{ 5, 5, 4, 4, 4 }));
}
```
