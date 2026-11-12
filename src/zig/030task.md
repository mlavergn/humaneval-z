## task_id

```
Zig/30
```

## prompt

```zig
const std = @import("std");

// Return only positive numbers in the list.
// >>> getPositive(allocator, &.{ -1, 2, -4, 5, 6 })
// { 2, 5, 6 }
// >>> getPositive(allocator, &.{ 5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10 })
// { 5, 3, 2, 3, 9, 123, 1 }
pub fn getPositive(allocator: std.mem.Allocator, l: []const i64) ![]i64 {
```

## declaration

```zig
pub fn getPositive(allocator: std.mem.Allocator, l: []const i64) ![]i64 {
```

## example_test

```zig
test "getPositive examples" {
    {
        const result = try getPositive(std.testing.allocator, &[_]i64{ -1, 2, -4, 5, 6 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 5, 6 }, result);
    }
    {
        const result = try getPositive(std.testing.allocator, &[_]i64{ 5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 5, 3, 2, 3, 9, 123, 1 }, result);
    }
}
```
