## task_id

```
Zig/27
```

## prompt

```zig
const std = @import("std");

// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
// >>> flipCase(allocator, "Hello")
// "hELLO"
pub fn flipCase(allocator: std.mem.Allocator, str: []const u8) ![]u8 {
```

## declaration

```zig
pub fn flipCase(allocator: std.mem.Allocator, str: []const u8) ![]u8 {
```

## example_test

```zig
test "flipCase examples" {
    {
        const result = try flipCase(std.testing.allocator, "Hello");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("hELLO", result);
    }
}
```
