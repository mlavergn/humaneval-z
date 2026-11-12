## task_id

```
Zig/117
```

## prompt

```zig
const std = @import("std");

// Given a string s and a natural number n, you have been tasked to implement
// a function that returns a list of all words from string s that contain exactly
// n consonants, in order these words appear in the string s.
// If the string s is empty then the function should return an empty list.
// Note: you may assume the input string contains only letters and spaces.
// Examples:
// selectWords(allocator, "Mary had a little lamb", 4) ==> ["little"]
// selectWords(allocator, "Mary had a little lamb", 3) ==> ["Mary", "lamb"]
// selectWords(allocator, "simple white space", 2) ==> []
// selectWords(allocator, "Hello world", 4) ==> ["world"]
// selectWords(allocator, "Uncle sam", 3) ==> ["Uncle"]
pub fn selectWords(allocator: std.mem.Allocator, s: []const u8, n: i64) ![][]const u8 {
```

## declaration

```zig
pub fn selectWords(allocator: std.mem.Allocator, s: []const u8, n: i64) ![][]const u8 {
```

## example_test

```zig
test "selectWords examples" {
    {
        const result = try selectWords(std.testing.allocator, "Mary had a little lamb", 4);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "little" }, result);
    }
    {
        const result = try selectWords(std.testing.allocator, "Mary had a little lamb", 3);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "Mary", "lamb" }, result);
    }
    {
        const result = try selectWords(std.testing.allocator, "simple white space", 2);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{}, result);
    }
    {
        const result = try selectWords(std.testing.allocator, "Hello world", 4);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "world" }, result);
    }
    {
        const result = try selectWords(std.testing.allocator, "Uncle sam", 3);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "Uncle" }, result);
    }
}
```
