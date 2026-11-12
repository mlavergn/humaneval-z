## task_id

```
Zig/120
```

## prompt

```zig
const std = @import("std");

// Given an array arr of integers and a positive integer k, return a sorted list
// of length k with the Maximum k numbers in arr.
//
// Example 1:
//
// Input: arr = [-3, -4, 5], k = 3
// Output: [-4, -3, 5]
//
// Example 2:
//
// Input: arr = [4, -4, 4], k = 2
// Output: [4, 4]
//
// Example 3:
//
// Input: arr = [-3, 2, 1, 2, -1, -2, 1], k = 1
// Output: [2]
//
// Note:
// 1. The length of the array will be in the range of [1, 1000].
// 2. The elements in the array will be in the range of [-1000, 1000].
// 3. 0 <= k <= len(arr)
pub fn maximum(allocator: std.mem.Allocator, arr: []const i64, k: i64) ![]i64 {
```

## declaration

```zig
pub fn maximum(allocator: std.mem.Allocator, arr: []const i64, k: i64) ![]i64 {
```

## example_test

```zig
test "maximum examples" {
    {
        const result = try maximum(std.testing.allocator, &[_]i64{ -3, -4, 5 }, 3);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ -4, -3, 5 }, result);
    }
    {
        const result = try maximum(std.testing.allocator, &[_]i64{ 4, -4, 4 }, 2);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 4, 4 }, result);
    }
    {
        const result = try maximum(std.testing.allocator, &[_]i64{ -3, 2, 1, 2, -1, -2, 1 }, 1);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2 }, result);
    }
}
```
