## task_id

```
Zig/140
```

## prompt

```zig
const std = @import("std");

// Given a string text, replace all spaces in it with underscores,
// and if a string has more than 2 consecutive spaces,
// then replace all consecutive spaces with -
//
// fixSpaces(allocator, "Example") == "Example"
// fixSpaces(allocator, "Example 1") == "Example_1"
// fixSpaces(allocator, " Example 2") == "_Example_2"
// fixSpaces(allocator, " Example   3") == "_Example-3"
pub fn fixSpaces(allocator: std.mem.Allocator, text: []const u8) ![]u8 {
```

## declaration

```zig
pub fn fixSpaces(allocator: std.mem.Allocator, text: []const u8) ![]u8 {
```

## example_test

```zig
test "fixSpaces examples" {
    {
        const result = try fixSpaces(std.testing.allocator, "Example");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("Example", result);
    }
    {
        const result = try fixSpaces(std.testing.allocator, "Example 1");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("Example_1", result);
    }
    {
        const result = try fixSpaces(std.testing.allocator, " Example 2");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("_Example_2", result);
    }
    {
        const result = try fixSpaces(std.testing.allocator, " Example   3");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("_Example-3", result);
    }
}
```
