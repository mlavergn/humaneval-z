## task_id

```
Zig/163
```

## prompt

```zig
const std = @import("std");

// Given two positive integers a and b, return the even digits between a
// and b, in ascending order.
//
// For example:
// generateIntegers(allocator, 2, 8) => [2, 4, 6, 8]
// generateIntegers(allocator, 8, 2) => [2, 4, 6, 8]
// generateIntegers(allocator, 10, 14) => []
pub fn generateIntegers(allocator: std.mem.Allocator, a: i64, b: i64) ![]i64 {
```

## declaration

```zig
pub fn generateIntegers(allocator: std.mem.Allocator, a: i64, b: i64) ![]i64 {
```

## example_test

```zig
test "generateIntegers examples" {
    {
        const result = try generateIntegers(std.testing.allocator, 2, 8);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 4, 6, 8 }, result);
    }
    {
        const result = try generateIntegers(std.testing.allocator, 8, 2);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 4, 6, 8 }, result);
    }
    {
        const result = try generateIntegers(std.testing.allocator, 10, 14);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{}, result);
    }
}
```
