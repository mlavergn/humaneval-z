## task_id

```
Zig/86
```

## prompt

```zig
const std = @import("std");

// Write a function that takes a string and returns an ordered version of it.
// Ordered version of string, is a string where all words (separated by space)
// are replaced by a new word where all the characters arranged in
// ascending order based on ascii value.
// Note: You should keep the order of words and blank spaces in the sentence.
//
// For example:
// antiShuffle(allocator, 'Hi') returns 'Hi'
// antiShuffle(allocator, 'hello') returns 'ehllo'
// antiShuffle(allocator, 'Hello World!!!') returns 'Hello !!!Wdlor'
pub fn antiShuffle(allocator: std.mem.Allocator, s: []const u8) ![]u8 {
```

## declaration

```zig
pub fn antiShuffle(allocator: std.mem.Allocator, s: []const u8) ![]u8 {
```

## example_test

```zig
test "antiShuffle examples" {
    {
        const result = try antiShuffle(std.testing.allocator, "Hi");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("Hi", result);
    }
    {
        const result = try antiShuffle(std.testing.allocator, "hello");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("ehllo", result);
    }
    {
        const result = try antiShuffle(std.testing.allocator, "Hello World!!!");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("Hello !!!Wdlor", result);
    }
}
```
