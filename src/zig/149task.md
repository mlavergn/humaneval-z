## task_id

```
Zig/149
```

## prompt

```zig
const std = @import("std");

// Write a function that accepts a list of strings as a parameter,
// deletes the strings that have odd lengths from it,
// and returns the resulted list with a sorted order,
// The list is always a list of strings and never an array of numbers,
// and it may contain duplicates.
// The order of the list should be ascending by length of each word, and you
// should return the list sorted by that rule.
// If two words have the same length, sort the list alphabetically.
// The function should return a list of strings in sorted order.
// You may assume that all words will have the same length.
// For example:
// assert list_sort(["aa", "a", "aaa"]) => ["aa"]
// assert list_sort(["ab", "a", "aaa", "cd"]) => ["ab", "cd"]
pub fn sortedListSum(allocator: std.mem.Allocator, lst: []const []const u8) ![][]const u8 {
```

## declaration

```zig
pub fn sortedListSum(allocator: std.mem.Allocator, lst: []const []const u8) ![][]const u8 {
```

## example_test

```zig
test "sortedListSum examples" {
    {
        const result = try sortedListSum(std.testing.allocator, &[_][]const u8{ "aa", "a", "aaa" });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "aa" }, result);
    }
    {
        const result = try sortedListSum(std.testing.allocator, &[_][]const u8{ "ab", "a", "aaa", "cd" });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "ab", "cd" }, result);
    }
}
```
