## task_id

```
Zig/98
```

## prompt

```zig
const std = @import("std");

// Given a string s, count the number of uppercase vowels in even indices.
//
// For example:
// countUpper('aBCdEf') returns 1
// countUpper('abcdefg') returns 0
// countUpper('dBBE') returns 0
pub fn countUpper(s: []const u8) i64 {
```

## declaration

```zig
pub fn countUpper(s: []const u8) i64 {
```

## example_test

```zig
test "countUpper examples" {
    try std.testing.expectEqual(1, countUpper("aBCdEf"));
    try std.testing.expectEqual(0, countUpper("abcdefg"));
    try std.testing.expectEqual(0, countUpper("dBBE"));
}
```
