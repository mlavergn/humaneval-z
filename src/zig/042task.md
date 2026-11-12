## task_id

```
Zig/42
```

## prompt

```zig
const std = @import("std");

// Return list with elements incremented by 1.
// >>> incrList(allocator, &.{ 1, 2, 3 })
// { 2, 3, 4 }
// >>> incrList(allocator, &.{ 5, 3, 5, 2, 3, 3, 9, 0, 123 })
// { 6, 4, 6, 3, 4, 4, 10, 1, 124 }
pub fn incrList(allocator: std.mem.Allocator, l: []const i64) ![]i64 {
```

## declaration

```zig
pub fn incrList(allocator: std.mem.Allocator, l: []const i64) ![]i64 {
```

## example_test

```zig
test "incrList examples" {
    {
        const result = try incrList(std.testing.allocator, &[_]i64{ 1, 2, 3 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 3, 4 }, result);
    }
    {
        const result = try incrList(std.testing.allocator, &[_]i64{ 5, 2, 5, 2, 3, 3, 9, 0, 123 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 6, 3, 6, 3, 4, 4, 10, 1, 124 }, result);
    }
}
```
