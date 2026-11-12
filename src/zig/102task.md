## task_id

```
Zig/102
```

## prompt

```zig
const std = @import("std");

// This function takes two positive numbers x and y and returns the
// biggest even integer number that is in the range [x, y] inclusive. If
// there's no such number, then the function should return -1.
//
// For example:
// chooseNum(12, 15) = 14
// chooseNum(13, 12) = -1
pub fn chooseNum(x: i64, y: i64) i64 {
```

## declaration

```zig
pub fn chooseNum(x: i64, y: i64) i64 {
```

## example_test

```zig
test "chooseNum examples" {
    try std.testing.expectEqual(14, chooseNum(12, 15));
    try std.testing.expectEqual(-1, chooseNum(13, 12));
}
```
