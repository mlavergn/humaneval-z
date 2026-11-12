## task_id

```
Zig/7
```

## prompt

```zig
const std = @import("std");

// Filter an input list of strings only for ones that contain given substring
// >>> filterBySubstring(allocator, &.{}, "a")
// {}
// >>> filterBySubstring(allocator, &.{ "abc", "bacd", "cde", "array" }, "a")
// { "abc", "bacd", "array" }
pub fn filterBySubstring(allocator: std.mem.Allocator, string_list: []const []const u8, substring: []const u8) ![][]const u8 {
```

## declaration

```zig
pub fn filterBySubstring(allocator: std.mem.Allocator, string_list: []const []const u8, substring: []const u8) ![][]const u8 {
```

## example_test

```zig
test "filterBySubstring examples" {
    {
        const result = try filterBySubstring(std.testing.allocator, &[_][]const u8{}, "a");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{}, result);
    }
    {
        const result = try filterBySubstring(std.testing.allocator, &[_][]const u8{ "abc", "bacd", "cde", "array" }, "a");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "abc", "bacd", "array" }, result);
    }
}
```
