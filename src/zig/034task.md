## task_id

```
Zig/34
```

## prompt

```zig
const std = @import("std");

// Return sorted Unique elements in a list
// >>> unique(allocator, &.{ 5, 3, 5, 2, 3, 3, 9, 0, 123 })
// { 0, 2, 3, 5, 9, 123 }
pub fn unique(allocator: std.mem.Allocator, l: []const i64) ![]i64 {
```

## declaration

```zig
pub fn unique(allocator: std.mem.Allocator, l: []const i64) ![]i64 {
```

## example_test

```zig
test "unique examples" {
    {
        const result = try unique(std.testing.allocator, &[_]i64{ 5, 3, 5, 2, 3, 3, 9, 0, 123 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 0, 2, 3, 5, 9, 123 }, result);
    }
}
```
