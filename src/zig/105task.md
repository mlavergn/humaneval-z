## task_id

```
Zig/105
```

## prompt

```zig
const std = @import("std");

// Given an array of integers, sort the integers that are between 1 and 9 inclusive,
// reverse the resulting array, and then replace each digit by its corresponding name from
// "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine".
//
// For example:
// arr = [2, 1, 1, 4, 5, 8, 2, 3]
// -> sort arr -> [1, 1, 2, 2, 3, 4, 5, 8]
// -> reverse arr -> [8, 5, 4, 3, 2, 2, 1, 1]
// return ["Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"]
//
// If the array is empty, return an empty array:
// arr = []
// return []
//
// If the array has any strange number ignore it:
// arr = [1, -1 , 55]
// -> sort arr -> [-1, 1, 55]
// -> reverse arr -> [55, 1, -1]
// return = ['One']
pub fn byLength(allocator: std.mem.Allocator, arr: []const i64) ![][]const u8 {
```

## declaration

```zig
pub fn byLength(allocator: std.mem.Allocator, arr: []const i64) ![][]const u8 {
```

## example_test

```zig
test "byLength examples" {
    {
        const result = try byLength(std.testing.allocator, &[_]i64{ 2, 1, 1, 4, 5, 8, 2, 3 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "Eight", "Five", "Four", "Three", "Two", "Two", "One", "One" }, result);
    }
    {
        const result = try byLength(std.testing.allocator, &[_]i64{});
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{}, result);
    }
    {
        const result = try byLength(std.testing.allocator, &[_]i64{ 1, -1, 55 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "One" }, result);
    }
    {
        const result = try byLength(std.testing.allocator, &[_]i64{ 1, -1, 3, 2 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "Three", "Two", "One" }, result);
    }
    {
        const result = try byLength(std.testing.allocator, &[_]i64{ 9, 4, 8 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "Nine", "Eight", "Four" }, result);
    }
}
```
