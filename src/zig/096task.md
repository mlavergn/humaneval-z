## task_id

```
Zig/96
```

## prompt

```zig
const std = @import("std");

// Implement a function that takes an non-negative integer and returns an array of the first n
// integers that are prime numbers and less than n.
// for example:
// countUpTo(allocator, 5) => [2,3]
// countUpTo(allocator, 11) => [2,3,5,7]
// countUpTo(allocator, 0) => []
// countUpTo(allocator, 20) => [2,3,5,7,11,13,17,19]
// countUpTo(allocator, 1) => []
// countUpTo(allocator, 18) => [2,3,5,7,11,13,17]
pub fn countUpTo(allocator: std.mem.Allocator, n: i64) ![]i64 {
```

## declaration

```zig
pub fn countUpTo(allocator: std.mem.Allocator, n: i64) ![]i64 {
```

## example_test

```zig
test "countUpTo examples" {
    {
        const result = try countUpTo(std.testing.allocator, 5);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 3 }, result);
    }
    {
        const result = try countUpTo(std.testing.allocator, 11);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 3, 5, 7 }, result);
    }
    {
        const result = try countUpTo(std.testing.allocator, 0);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{}, result);
    }
    {
        const result = try countUpTo(std.testing.allocator, 20);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 3, 5, 7, 11, 13, 17, 19 }, result);
    }
    {
        const result = try countUpTo(std.testing.allocator, 1);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{}, result);
    }
    {
        const result = try countUpTo(std.testing.allocator, 18);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 3, 5, 7, 11, 13, 17 }, result);
    }
}
```
