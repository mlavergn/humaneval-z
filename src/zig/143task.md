## task_id

```
Zig/143
```

## prompt

```zig
const std = @import("std");

// You are given a string representing a sentence,
// the sentence contains some words separated by a space,
// and you have to return a string that contains the words from the original sentence,
// whose lengths are prime numbers,
// the order of the words in the new string should be the same as the original one.
//
// Example 1:
// Input: sentence = "This is a test"
// Output: "is"
//
// Example 2:
// Input: sentence = "lets go for swimming"
// Output: "go for"
//
// Constraints:
// * 1 <= len(sentence) <= 100
// * sentence contains only letters
pub fn wordsInSentence(allocator: std.mem.Allocator, sentence: []const u8) ![]u8 {
```

## declaration

```zig
pub fn wordsInSentence(allocator: std.mem.Allocator, sentence: []const u8) ![]u8 {
```

## example_test

```zig
test "wordsInSentence examples" {
    {
        const result = try wordsInSentence(std.testing.allocator, "This is a test");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("is", result);
    }
    {
        const result = try wordsInSentence(std.testing.allocator, "lets go for swimming");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("go for", result);
    }
}
```
