## task_id

```
Zig/154
```

## prompt

```zig
const std = @import("std");

// You are given 2 words. You need to return true if the second word or any of its rotations is a substring in the first word
// cycpatternCheck("abcd","abd") => false
// cycpatternCheck("hello","ell") => true
// cycpatternCheck("whassup","psus") => false
// cycpatternCheck("abab","baa") => true
// cycpatternCheck("efef","eeff") => false
// cycpatternCheck("himenss","simen") => true
pub fn cycpatternCheck(a: []const u8, b: []const u8) bool {
```

## declaration

```zig
pub fn cycpatternCheck(a: []const u8, b: []const u8) bool {
```

## example_test

```zig
test "cycpatternCheck examples" {
    try std.testing.expect(!cycpatternCheck("abcd", "abd"));
    try std.testing.expect(cycpatternCheck("hello", "ell"));
    try std.testing.expect(!cycpatternCheck("whasup", "psus"));
    try std.testing.expect(cycpatternCheck("abab", "baa"));
    try std.testing.expect(!cycpatternCheck("efef", "eeff"));
    try std.testing.expect(cycpatternCheck("himenss", "simen"));
}
```
