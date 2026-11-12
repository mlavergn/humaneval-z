## task_id

```
Zig/70
```

## prompt

```zig
const std = @import("std");

// Given list of integers, return list in strange order.
// Strange sorting, is when you start with the minimum value,
// then maximum of the remaining integers, then minimum and so on.
//
// Examples:
// strangeSortList(allocator, [1, 2, 3, 4]) == [1, 4, 2, 3]
// strangeSortList(allocator, [5, 5, 5, 5]) == [5, 5, 5, 5]
// strangeSortList(allocator, []) == []
pub fn strangeSortList(allocator: std.mem.Allocator, lst: []const i64) ![]i64 {
```

## declaration

```zig
pub fn strangeSortList(allocator: std.mem.Allocator, lst: []const i64) ![]i64 {
```

## example_test

```zig
test "strangeSortList examples" {
    {
        const result = try strangeSortList(std.testing.allocator, &[_]i64{ 1, 2, 3, 4 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 4, 2, 3 }, result);
    }
    {
        const result = try strangeSortList(std.testing.allocator, &[_]i64{ 5, 5, 5, 5 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 5, 5, 5, 5 }, result);
    }
    {
        const result = try strangeSortList(std.testing.allocator, &[_]i64{});
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{}, result);
    }
}
```
