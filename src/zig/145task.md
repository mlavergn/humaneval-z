## task_id

```
Zig/145
```

## prompt

```zig
const std = @import("std");

// Write a function which sorts the given list of integers
// in ascending order according to the sum of their digits.
// Note: if there are several items with similar sum of their digits,
// order them based on their index in original list.
//
// For example:
// >>> orderByPoints(allocator, &.{ 1, 11, -1, -11, -12 }) == { -1, -11, 1, -12, 11 }
// >>> orderByPoints(allocator, &.{}) == {}
pub fn orderByPoints(allocator: std.mem.Allocator, nums: []const i64) ![]i64 {
```

## declaration

```zig
pub fn orderByPoints(allocator: std.mem.Allocator, nums: []const i64) ![]i64 {
```

## example_test

```zig
test "orderByPoints examples" {
    {
        const result = try orderByPoints(std.testing.allocator, &[_]i64{ 1, 11, -1, -11, -12 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ -1, -11, 1, -12, 11 }, result);
    }
    {
        const result = try orderByPoints(std.testing.allocator, &[_]i64{});
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{}, result);
    }
}
```
