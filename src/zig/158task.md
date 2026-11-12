## task_id

```
Zig/158
```

## prompt

```zig
const std = @import("std");

// Write a function that accepts a list of strings.
// The list contains different words. Return the word with maximum number
// of unique characters. If multiple strings have maximum number of unique
// characters, return the one which comes first in lexicographical order.
//
// findMax(["name", "of", "string"]) == "string"
// findMax(["name", "enam", "game"]) == "enam"
// findMax(["aaaaaaa", "bb" ,"cc"]) == ""aaaaaaa"
pub fn findMax(words: []const []const u8) []const u8 {
```

## declaration

```zig
pub fn findMax(words: []const []const u8) []const u8 {
```

## example_test

```zig
test "findMax examples" {
    try std.testing.expectEqualStrings("string", findMax(&[_][]const u8{ "name", "of", "string" }));
    try std.testing.expectEqualStrings("enam", findMax(&[_][]const u8{ "name", "enam", "game" }));
    try std.testing.expectEqualStrings("aaaaaaa", findMax(&[_][]const u8{ "aaaaaaa", "bb", "cc" }));
}
```
