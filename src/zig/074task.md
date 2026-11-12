## task_id

```
Zig/74
```

## prompt

```zig
const std = @import("std");

// Write a function that accepts two lists of strings and returns the list that has
// total number of chars in the all strings of the list less than the other list.
//
// if the two lists have the same number of chars, return the first list.
//
// Examples
// totalMatch([], []) ➞ []
// totalMatch(['hi', 'admin'], ['hI', 'Hi']) ➞ ['hI', 'Hi']
// totalMatch(['hi', 'admin'], ['hi', 'hi', 'admin', 'project']) ➞ ['hi', 'admin']
// totalMatch(['hi', 'admin'], ['hI', 'hi', 'hi']) ➞ ['hI', 'hi', 'hi']
// totalMatch(['4'], ['1', '2', '3', '4', '5']) ➞ ['4']
pub fn totalMatch(lst1: []const []const u8, lst2: []const []const u8) []const []const u8 {
```

## declaration

```zig
pub fn totalMatch(lst1: []const []const u8, lst2: []const []const u8) []const []const u8 {
```

## example_test

```zig
test "totalMatch examples" {
    {
        const result = totalMatch(&[_][]const u8{}, &[_][]const u8{});
        try std.testing.expectEqualDeep(&[_][]const u8{}, result);
    }
    {
        const result = totalMatch(&[_][]const u8{ "hi", "admin" }, &[_][]const u8{ "hi", "hi", "admin", "project" });
        try std.testing.expectEqualDeep(&[_][]const u8{ "hi", "admin" }, result);
    }
    {
        const result = totalMatch(&[_][]const u8{ "4" }, &[_][]const u8{ "1", "2", "3", "4", "5" });
        try std.testing.expectEqualDeep(&[_][]const u8{ "4" }, result);
    }
    {
        const result = totalMatch(&[_][]const u8{ "hi", "admin" }, &[_][]const u8{ "hI", "Hi" });
        try std.testing.expectEqualDeep(&[_][]const u8{ "hI", "Hi" }, result);
    }
    {
        const result = totalMatch(&[_][]const u8{ "hi", "admin" }, &[_][]const u8{ "hI", "hi", "hi" });
        try std.testing.expectEqualDeep(&[_][]const u8{ "hI", "hi", "hi" }, result);
    }
}
```
