## task_id

```
Zig/5
```

## prompt

```zig
const std = @import("std");

// Insert a number 'delimeter' between every two consecutive elements of input list `numbers'
// >>> intersperse(allocator, &.{}, 4)
// {}
// >>> intersperse(allocator, &.{ 1, 2, 3 }, 4)
// { 1, 4, 2, 4, 3 }
pub fn intersperse(allocator: std.mem.Allocator, numbers: []const i64, delimeter: i64) ![]i64 {
```

## declaration

```zig
pub fn intersperse(allocator: std.mem.Allocator, numbers: []const i64, delimeter: i64) ![]i64 {
```

## example_test

```zig
test "intersperse examples" {
    {
        const result = try intersperse(std.testing.allocator, &[_]i64{}, 4);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{}, result);
    }
    {
        const result = try intersperse(std.testing.allocator, &[_]i64{ 1, 2, 3 }, 4);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 4, 2, 4, 3 }, result);
    }
}
```
