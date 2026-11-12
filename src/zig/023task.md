## task_id

```
Zig/23
```

## prompt

```zig
const std = @import("std");

// Return length of given string
// >>> strlen("")
// 0
// >>> strlen("abc")
// 3
pub fn strlen(str: []const u8) i64 {
```

## declaration

```zig
pub fn strlen(str: []const u8) i64 {
```

## example_test

```zig
test "strlen examples" {
    try std.testing.expectEqual(0, strlen(""));
    try std.testing.expectEqual(3, strlen("abc"));
}
```
