## task_id

```
Zig/125
```

## prompt

```zig
const std = @import("std");

// Either the list of words or a count.
pub const SplitResult = union(enum) {
    words: [][]const u8,
    count: i64,
};

// Given a string of words, return a list of words split on whitespace, if no whitespaces exists in the text you
// should split on commas ',' if no commas exists you should return the number of lower-case letters with odd order in the
// alphabet, ord('a') = 0, ord('b') = 1, ... ord('z') = 25
// Examples
// splitWords(allocator, "Hello world!") ➞ ["Hello", "world!"]
// splitWords(allocator, "Hello,world!") ➞ ["Hello", "world!"]
// splitWords(allocator, "abcdef") == 3
pub fn splitWords(allocator: std.mem.Allocator, txt: []const u8) !SplitResult {
```

## declaration

```zig
pub fn splitWords(allocator: std.mem.Allocator, txt: []const u8) !SplitResult {
```

## example_test

```zig
test "splitWords examples" {
    const word_cases = [_]struct { input: []const u8, want: []const []const u8 }{
        .{ .input = "Hello world!", .want = &.{ "Hello", "world!" } },
        .{ .input = "Hello,world!", .want = &.{ "Hello", "world!" } },
    };
    for (word_cases) |case| {
        const result = try splitWords(std.testing.allocator, case.input);
        try std.testing.expect(result == .words);
        defer std.testing.allocator.free(result.words);
        try std.testing.expectEqualDeep(case.want, @as([]const []const u8, result.words));
    }
    try std.testing.expectEqualDeep(SplitResult{ .count = 3 }, try splitWords(std.testing.allocator, "abcdef"));
}
```
