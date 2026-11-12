## task_id

```
Zig/87
```

## prompt

```zig
const std = @import("std");

// You are given a 2 dimensional data, as a nested lists,
// which is similar to matrix, however, unlike matrices,
// each row may contain a different number of columns.
// Given lst, and integer x, find integers x in the list,
// and return list of tuples, [(x1, y1), (x2, y2) ...] such that
// each tuple is a coordinate - (row, columns), starting with 0.
// Sort coordinates initially by rows in ascending order.
// Also, sort coordinates of the row by columns in descending order.
//
// Examples:
// getRow(allocator, [
// [1,2,3,4,5,6],
// [1,2,3,4,1,6],
// [1,2,3,4,5,1]
// ], 1) == [(0, 0), (1, 4), (1, 0), (2, 5), (2, 0)]
// getRow(allocator, [], 1) == []
// getRow(allocator, [[], [1], [1, 2, 3]], 3) == [(2, 2)]
pub fn getRow(allocator: std.mem.Allocator, lst: []const []const i64, x: i64) ![][2]i64 {
```

## declaration

```zig
pub fn getRow(allocator: std.mem.Allocator, lst: []const []const i64, x: i64) ![][2]i64 {
```

## example_test

```zig
test "getRow examples" {
    {
        const result = try getRow(std.testing.allocator, &[_][]const i64{ &[_]i64{ 1, 2, 3, 4, 5, 6 }, &[_]i64{ 1, 2, 3, 4, 1, 6 }, &[_]i64{ 1, 2, 3, 4, 5, 1 } }, 1);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][2]i64{ [2]i64{ 0, 0 }, [2]i64{ 1, 4 }, [2]i64{ 1, 0 }, [2]i64{ 2, 5 }, [2]i64{ 2, 0 } }, result);
    }
    {
        const result = try getRow(std.testing.allocator, &[_][]const i64{ &[_]i64{} }, 1);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][2]i64{}, result);
    }
    {
        const result = try getRow(std.testing.allocator, &[_][]const i64{ &[_]i64{}, &[_]i64{ 1 }, &[_]i64{ 1, 2, 3 } }, 3);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][2]i64{ [2]i64{ 2, 2 } }, result);
    }
}
```
