## task_id

```
Zig/90
```

## prompt

```zig
const std = @import("std");

// You are given a list of integers.
// Write a function nextSmallest(allocator, ) that returns the 2nd smallest element of the list.
// Return null if there is no such element.
//
// nextSmallest(allocator, [1, 2, 3, 4, 5]) == 2
// nextSmallest(allocator, [5, 1, 4, 3, 2]) == 2
// nextSmallest(allocator, []) == null
// nextSmallest(allocator, [1, 1]) == null
pub fn nextSmallest(allocator: std.mem.Allocator, lst: []const i64) !?i64 {
```

## declaration

```zig
pub fn nextSmallest(allocator: std.mem.Allocator, lst: []const i64) !?i64 {
```

## example_test

```zig
test "nextSmallest examples" {
    try std.testing.expectEqual(@as(?i64, 2), try nextSmallest(std.testing.allocator, &[_]i64{ 1, 2, 3, 4, 5 }));
    try std.testing.expectEqual(@as(?i64, 2), try nextSmallest(std.testing.allocator, &[_]i64{ 5, 1, 4, 3, 2 }));
    try std.testing.expectEqual(@as(?i64, null), try nextSmallest(std.testing.allocator, &[_]i64{}));
    try std.testing.expectEqual(@as(?i64, null), try nextSmallest(std.testing.allocator, &[_]i64{ 1, 1 }));
}
```
