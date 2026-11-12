## task_id

```
Zig/116
```

## prompt

```zig
const std = @import("std");

// In this Kata, you have to sort an array of non-negative integers according to
// number of ones in their binary representation in ascending order.
// For similar number of ones, sort based on decimal value.
//
// It must be implemented like this:
// >>> sortArray(allocator, &.{ 1, 5, 2, 3, 4 }) == { 1, 2, 3, 4, 5 }
// >>> sortArray(allocator, &.{ -2, -3, -4, -5, -6 }) == { -6, -5, -4, -3, -2 }
// >>> sortArray(allocator, [1, 0, 2, 3, 4]) [0, 1, 2, 3, 4]
pub fn sortArray(allocator: std.mem.Allocator, arr: []const i64) ![]i64 {
```

## declaration

```zig
pub fn sortArray(allocator: std.mem.Allocator, arr: []const i64) ![]i64 {
```

## example_test

```zig
test "sortArray examples" {
    {
        const result = try sortArray(std.testing.allocator, &[_]i64{ 1, 5, 2, 3, 4 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 2, 4, 3, 5 }, result);
    }
    {
        const result = try sortArray(std.testing.allocator, &[_]i64{ -2, -3, -4, -5, -6 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ -4, -2, -6, -5, -3 }, result);
    }
    {
        const result = try sortArray(std.testing.allocator, &[_]i64{ 1, 0, 2, 3, 4 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 0, 1, 2, 4, 3 }, result);
    }
}
```
