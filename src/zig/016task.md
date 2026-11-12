## task_id

```
Zig/16
```

## prompt

```zig
const std = @import("std");

// Given a string, find out how many distinct characters (regardless of case) does it consist of
// >>> countDistinctCharacters("xyzXYZ")
// 3
// >>> countDistinctCharacters("Jerry")
// 4
pub fn countDistinctCharacters(str: []const u8) i64 {
```

## declaration

```zig
pub fn countDistinctCharacters(str: []const u8) i64 {
```

## example_test

```zig
test "countDistinctCharacters examples" {
    try std.testing.expectEqual(3, countDistinctCharacters("xyzXYZ"));
    try std.testing.expectEqual(4, countDistinctCharacters("Jerry"));
}
```
