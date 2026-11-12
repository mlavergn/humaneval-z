## task_id

```
Zig/54
```

## prompt

```zig
const std = @import("std");

// Check if two words have the same characters.
// >>> sameChars("eabcdzzzz", "dddzzzzzzzddeddabc")
// true
// >>> sameChars("abcd", "dddddddabc")
// true
// >>> sameChars("dddddddabc", "abcd")
// true
// >>> sameChars("eabcd", "dddddddabc")
// false
// >>> sameChars("abcd", "dddddddabce")
// false
// >>> sameChars("eabcdzzzz", "dddzzzzzzzddddabc")
// false
pub fn sameChars(s0: []const u8, s1: []const u8) bool {
```

## declaration

```zig
pub fn sameChars(s0: []const u8, s1: []const u8) bool {
```

## example_test

```zig
test "sameChars examples" {
    try std.testing.expect(sameChars("eabcdzzzz", "dddzzzzzzzddeddabc"));
    try std.testing.expect(sameChars("abcd", "dddddddabc"));
    try std.testing.expect(sameChars("dddddddabc", "abcd"));
    try std.testing.expect(!sameChars("eabcd", "dddddddabc"));
    try std.testing.expect(!sameChars("abcd", "dddddddabcf"));
    try std.testing.expect(!sameChars("eabcdzzzz", "dddzzzzzzzddddabc"));
}
```
