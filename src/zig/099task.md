## task_id

```
Zig/99
```

## prompt

```zig
const std = @import("std");

// Create a function that takes a value (string) representing a number
// and returns the closest integer to it. If the number is equidistant
// from two integers, round it away from zero.
//
// Examples
// >>> closestInteger("10")
// 10
// >>> closestInteger("15.3")
// 15
//
// Note:
// Rounding away from zero means that if the given number is equidistant
// from two integers, the one you should return is the one that is the
// farthest from zero. For example closestInteger("14.5") should
// return 15 and closestInteger("-14.5") should return -15.
pub fn closestInteger(value: []const u8) i64 {
```

## declaration

```zig
pub fn closestInteger(value: []const u8) i64 {
```

## example_test

```zig
test "closestInteger examples" {
    try std.testing.expectEqual(10, closestInteger("10"));
    try std.testing.expectEqual(15, closestInteger("15.3"));
}
```
