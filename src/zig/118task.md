## task_id

```
Zig/118
```

## prompt

```zig
const std = @import("std");

// You are given a word. Your task is to find the closest vowel that stands between
// two consonants from the right side of the word (case sensitive).
//
// Vowels in the beginning and ending doesn't count. Return empty string if you didn't
// find any vowel met the above condition.
//
// You may assume that the given string contains English letter only.
//
// Example:
// getClosestVowel("yogurt") ==> "u"
// getClosestVowel("FULL") ==> "U"
// getClosestVowel("quick") ==> ""
// getClosestVowel("ab") ==> ""
pub fn getClosestVowel(word: []const u8) []const u8 {
```

## declaration

```zig
pub fn getClosestVowel(word: []const u8) []const u8 {
```

## example_test

```zig
test "getClosestVowel examples" {
    try std.testing.expectEqualStrings("u", getClosestVowel("yogurt"));
    try std.testing.expectEqualStrings("U", getClosestVowel("FULL"));
    try std.testing.expectEqualStrings("", getClosestVowel("ab"));
    try std.testing.expectEqualStrings("", getClosestVowel("quick"));
}
```
