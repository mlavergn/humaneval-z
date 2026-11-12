## task_id

```
Zig/104
```

## prompt

```zig
const std = @import("std");

// Given a list of positive integers x. return a sorted list of all
// elements that hasn't any even digit.
//
// Note: Returned list should be sorted in increasing order.
//
// For example:
// >>> uniqueDigits(allocator, &.{ 15, 33, 1422, 1 })
// { 1, 15, 33 }
// >>> uniqueDigits(allocator, &.{ 152, 323, 1422, 10 })
// {}
pub fn uniqueDigits(allocator: std.mem.Allocator, x: []const i64) ![]i64 {
```

## declaration

```zig
pub fn uniqueDigits(allocator: std.mem.Allocator, x: []const i64) ![]i64 {
```

## example_test

```zig
test "uniqueDigits examples" {
    {
        const result = try uniqueDigits(std.testing.allocator, &[_]i64{ 15, 33, 1422, 1 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 15, 33 }, result);
    }
    {
        const result = try uniqueDigits(std.testing.allocator, &[_]i64{ 152, 323, 1422, 10 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{}, result);
    }
}
```
