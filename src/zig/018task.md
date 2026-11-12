## task_id

```
Zig/18
```

## prompt

```zig
const std = @import("std");

// Find how many times a given substring can be found in the original string. Count overlaping cases.
// >>> howManyTimes("", 'a')
// 0
// >>> howManyTimes("aaa", 'a')
// 3
// >>> howManyTimes("aaaa", "aa")
// 3
pub fn howManyTimes(str: []const u8, substring: []const u8) i64 {
```

## declaration

```zig
pub fn howManyTimes(str: []const u8, substring: []const u8) i64 {
```

## example_test

```zig
test "howManyTimes examples" {
    try std.testing.expectEqual(0, howManyTimes("", "a"));
    try std.testing.expectEqual(3, howManyTimes("aaa", "a"));
    try std.testing.expectEqual(3, howManyTimes("aaaa", "aa"));
}
```
