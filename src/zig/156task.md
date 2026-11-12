## task_id

```
Zig/156
```

## prompt

```zig
const std = @import("std");

// Given a positive integer, obtain its roman numeral equivalent as a string,
// and return it in lowercase.
// Restrictions: 1 <= num <= 1000
//
// Examples:
// >>> intToMiniRoman(allocator, 19) == "xix"
// >>> intToMiniRoman(allocator, 152) == "clii"
// >>> intToMiniRoman(allocator, 426) == "cdxxvi"
pub fn intToMiniRoman(allocator: std.mem.Allocator, number: i64) ![]u8 {
```

## declaration

```zig
pub fn intToMiniRoman(allocator: std.mem.Allocator, number: i64) ![]u8 {
```

## example_test

```zig
test "intToMiniRoman examples" {
    {
        const result = try intToMiniRoman(std.testing.allocator, 19);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("xix", result);
    }
    {
        const result = try intToMiniRoman(std.testing.allocator, 152);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("clii", result);
    }
    {
        const result = try intToMiniRoman(std.testing.allocator, 426);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("cdxxvi", result);
    }
}
```
