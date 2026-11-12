## task_id

```
Zig/112
```

## prompt

```zig
const std = @import("std");

pub const ReverseDeleteResult = struct { string: []u8, is_palindrome: bool };

// Task
// We are given two strings s and c, you have to deleted all the characters in s that are equal to any character in c
// then check if the result string is palindrome.
// A string is called palindrome if it reads the same backward as forward.
// You should return a tuple containing the result string and true/false for the check.
// Example
// For s = "abcde", c = "ae", the result should be ('bcd',false)
// For s = "abcdef", c = "b"  the result should be ('acdef',false)
// For s = "abcdedcba", c = "ab", the result should be ('cdedc',true)
pub fn reverseDelete(allocator: std.mem.Allocator, s: []const u8, c: []const u8) !ReverseDeleteResult {
```

## declaration

```zig
pub fn reverseDelete(allocator: std.mem.Allocator, s: []const u8, c: []const u8) !ReverseDeleteResult {
```

## example_test

```zig
test "reverseDelete examples" {
    const cases = [_]struct { s: []const u8, c: []const u8, string: []const u8, is_palindrome: bool }{
        .{ .s = "abcde", .c = "ae", .string = "bcd", .is_palindrome = false },
        .{ .s = "abcdef", .c = "b", .string = "acdef", .is_palindrome = false },
        .{ .s = "abcdedcba", .c = "ab", .string = "cdedc", .is_palindrome = true },
    };
    for (cases) |case| {
        const result = try reverseDelete(std.testing.allocator, case.s, case.c);
        defer std.testing.allocator.free(result.string);
        try std.testing.expectEqualStrings(case.string, result.string);
        try std.testing.expectEqual(case.is_palindrome, result.is_palindrome);
    }
}
```
