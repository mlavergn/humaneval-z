## task_id

```
Zig/28
```

## prompt

```zig
const std = @import("std");

// Concatenate list of strings into a single string
// >>> concatenate(allocator, &.{})
// ""
// >>> concatenate(allocator, &.{ "a", "b", "c" })
// "abc"
pub fn concatenate(allocator: std.mem.Allocator, strings: []const []const u8) ![]u8 {
```

## declaration

```zig
pub fn concatenate(allocator: std.mem.Allocator, strings: []const []const u8) ![]u8 {
```

## example_test

```zig
test "concatenate examples" {
    {
        const result = try concatenate(std.testing.allocator, &[_][]const u8{});
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("", result);
    }
    {
        const result = try concatenate(std.testing.allocator, &[_][]const u8{ "a", "b", "c" });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("abc", result);
    }
}
```
