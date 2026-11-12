## task_id

```
Zig/58
```

## prompt

```zig
const std = @import("std");

// Return sorted unique Common elements for two lists.
// >>> common(allocator, &.{ 1, 4, 3, 34, 653, 2, 5 }, &.{ 5, 7, 1, 5, 9, 653, 121 })
// { 1, 5, 653 }
// >>> common(allocator, &.{ 5, 3, 2, 8 }, &.{ 3, 2 })
// { 2, 3 }
pub fn common(allocator: std.mem.Allocator, l1: []const i64, l2: []const i64) ![]i64 {
```

## declaration

```zig
pub fn common(allocator: std.mem.Allocator, l1: []const i64, l2: []const i64) ![]i64 {
```

## example_test

```zig
test "common examples" {
    {
        const result = try common(std.testing.allocator, &[_]i64{ 1, 4, 3, 34, 653, 2, 5 }, &[_]i64{ 5, 7, 1, 5, 9, 653, 121 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 5, 653 }, result);
    }
    {
        const result = try common(std.testing.allocator, &[_]i64{ 5, 3, 2, 8 }, &[_]i64{ 3, 2 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 3 }, result);
    }
}
```
