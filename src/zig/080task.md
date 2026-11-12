## task_id

```
Zig/80
```

## prompt

```zig
const std = @import("std");

// You are given a string s.
// Your task is to check if the string is happy or not.
// A string is happy if its length is at least 3 and every 3 consecutive letters are distinct
// For example:
// isHappy(a) => false
// isHappy(aa) => false
// isHappy(abcd) => true
// isHappy(aabb) => false
// isHappy(adb) => true
// isHappy(xyy) => false
pub fn isHappy(s: []const u8) bool {
```

## declaration

```zig
pub fn isHappy(s: []const u8) bool {
```

## example_test

```zig
test "isHappy examples" {
    try std.testing.expect(!isHappy("a"));
    try std.testing.expect(!isHappy("aa"));
    try std.testing.expect(isHappy("abcd"));
    try std.testing.expect(!isHappy("aabb"));
    try std.testing.expect(isHappy("adb"));
    try std.testing.expect(!isHappy("xyy"));
}
```
