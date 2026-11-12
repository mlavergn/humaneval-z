## task_id

```
Zig/66
```

## prompt

```zig
const std = @import("std");

// Task
// Write a function that takes a string as input and returns the sum of the upper characters only'
// ASCII codes.
//
// Examples:
// digitsum("") => 0
// digitsum("abAB") => 131
// digitsum("abcCd") => 67
// digitsum("helloE") => 69
// digitsum("woArBld") => 131
// digitsum("aAaaaXa") => 153
pub fn digitsum(x: []const u8) i64 {
```

## declaration

```zig
pub fn digitsum(x: []const u8) i64 {
```

## example_test

```zig
test "digitsum examples" {
    try std.testing.expectEqual(0, digitsum(""));
    try std.testing.expectEqual(131, digitsum("abAB"));
    try std.testing.expectEqual(67, digitsum("abcCd"));
    try std.testing.expectEqual(69, digitsum("helloE"));
    try std.testing.expectEqual(131, digitsum("woArBld"));
    try std.testing.expectEqual(153, digitsum("aAaaaXa"));
}
```
