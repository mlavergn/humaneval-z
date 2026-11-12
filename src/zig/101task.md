## task_id

```
Zig/101
```

## prompt

```zig
const std = @import("std");

// You will be given a string of words separated by commas or spaces. Your task is
// to split the string into words and return an array of the words.
//
// For example:
// wordsString(allocator, "Hi, my name is John") == ["Hi", "my", "name", "is", "John"]
// wordsString(allocator, "One, two, three, four, five, six") == ["One", "two", "three", "four", "five", "six"]
pub fn wordsString(allocator: std.mem.Allocator, s: []const u8) ![][]const u8 {
```

## declaration

```zig
pub fn wordsString(allocator: std.mem.Allocator, s: []const u8) ![][]const u8 {
```

## example_test

```zig
test "wordsString examples" {
    {
        const result = try wordsString(std.testing.allocator, "Hi, my name is John");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "Hi", "my", "name", "is", "John" }, result);
    }
    {
        const result = try wordsString(std.testing.allocator, "One, two, three, four, five, six");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "One", "two", "three", "four", "five", "six" }, result);
    }
}
```
