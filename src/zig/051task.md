## task_id

```
Zig/51
```

## prompt

```zig
const std = @import("std");

// removeVowels is a function that takes string and returns string without vowels.
// >>> removeVowels(allocator, "")
// ""
// >>> removeVowels(allocator, "abcdef\nghijklm")
// "bcdf\nghjklm"
// >>> removeVowels(allocator, "abcdef")
// "bcdf"
// >>> removeVowels(allocator, "aaaaa")
// ""
// >>> removeVowels(allocator, "aaBAA")
// "B"
// >>> removeVowels(allocator, "zbcd")
// "zbcd"
pub fn removeVowels(allocator: std.mem.Allocator, text: []const u8) ![]u8 {
```

## declaration

```zig
pub fn removeVowels(allocator: std.mem.Allocator, text: []const u8) ![]u8 {
```

## example_test

```zig
test "removeVowels examples" {
    {
        const result = try removeVowels(std.testing.allocator, "");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("", result);
    }
    {
        const result = try removeVowels(std.testing.allocator, "abcdef\nghijklm");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("bcdf\nghjklm", result);
    }
    {
        const result = try removeVowels(std.testing.allocator, "abcdef");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("bcdf", result);
    }
    {
        const result = try removeVowels(std.testing.allocator, "aaaaa");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("", result);
    }
    {
        const result = try removeVowels(std.testing.allocator, "aaBAA");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("B", result);
    }
    {
        const result = try removeVowels(std.testing.allocator, "zbcd");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("zbcd", result);
    }
}
```
