## task_id

```
Zig/29
```

## prompt

```zig
const std = @import("std");

// Filter an input list of strings only for ones that start with a given prefix.
// >>> filterByPrefix(allocator, &.{}, "a")
// {}
// >>> filterByPrefix(allocator, &.{ "abc", "bcd", "cde", "array" }, "a")
// { "abc", "array" }
pub fn filterByPrefix(allocator: std.mem.Allocator, strings: []const []const u8, prefix: []const u8) ![][]const u8 {
```

## declaration

```zig
pub fn filterByPrefix(allocator: std.mem.Allocator, strings: []const []const u8, prefix: []const u8) ![][]const u8 {
```

## example_test

```zig
test "filterByPrefix examples" {
    {
        const result = try filterByPrefix(std.testing.allocator, &[_][]const u8{}, "a");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{}, result);
    }
    {
        const result = try filterByPrefix(std.testing.allocator, &[_][]const u8{ "abc", "bcd", "cde", "array" }, "a");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "abc", "array" }, result);
    }
}
```
