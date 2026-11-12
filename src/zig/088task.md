## task_id

```
Zig/88
```

## prompt

```zig
const std = @import("std");

// Given an array of non-negative integers, return a copy of the given array after sorting,
// you will sort the given array in ascending order if the sum( first index value, last index value) is odd,
// or sort it in descending order if the sum( first index value, last index value) is even.
//
// Note:
// * don't change the given array.
//
// Examples:
// * sortArray(allocator, []) => []
// * sortArray(allocator, [5]) => [5]
// * sortArray(allocator, [2, 4, 3, 0, 1, 5]) => [0, 1, 2, 3, 4, 5]
// * sortArray(allocator, [2, 4, 3, 0, 1, 5, 6]) => [6, 5, 4, 3, 2, 1, 0]
pub fn sortArray(allocator: std.mem.Allocator, array: []const i64) ![]i64 {
```

## declaration

```zig
pub fn sortArray(allocator: std.mem.Allocator, array: []const i64) ![]i64 {
```

## example_test

```zig
test "sortArray examples" {
    {
        const result = try sortArray(std.testing.allocator, &[_]i64{});
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{}, result);
    }
    {
        const result = try sortArray(std.testing.allocator, &[_]i64{ 5 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 5 }, result);
    }
    {
        const result = try sortArray(std.testing.allocator, &[_]i64{ 2, 4, 3, 0, 1, 5 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 0, 1, 2, 3, 4, 5 }, result);
    }
    {
        const result = try sortArray(std.testing.allocator, &[_]i64{ 2, 4, 3, 0, 1, 5, 6 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 6, 5, 4, 3, 2, 1, 0 }, result);
    }
}
```
