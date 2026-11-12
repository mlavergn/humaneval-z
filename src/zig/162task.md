## task_id

```
Zig/162
```

## prompt

```zig
const std = @import("std");

// Given a string 'text', return its md5 hash equivalent string.
// If 'text' is an empty string, return null.
//
// >>> stringToMd5(allocator, "Hello world") == "3e25960a79dbc69b674cd4ec67a72c62"
pub fn stringToMd5(allocator: std.mem.Allocator, text: []const u8) !?[]u8 {
```

## declaration

```zig
pub fn stringToMd5(allocator: std.mem.Allocator, text: []const u8) !?[]u8 {
```

## example_test

```zig
test "stringToMd5 examples" {
    {
        const result = (try stringToMd5(std.testing.allocator, "Hello world")).?;
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("3e25960a79dbc69b674cd4ec67a72c62", result);
    }
}
```
