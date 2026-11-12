## task_id

```
Zig/108
```

## prompt

```zig
const std = @import("std");

// Write a function countNums which takes an array of integers and returns
// the number of elements which has a sum of digits > 0.
// If a number is negative, then its first signed digit will be negative:
// e.g. -123 has signed digits -1, 2, and 3.
// >>> countNums(&.{}) == 0
// >>> countNums(&.{ -1, 11, -11 }) == 1
// >>> countNums(&.{ 1, 1, 2 }) == 3
pub fn countNums(arr: []const i64) i64 {
```

## declaration

```zig
pub fn countNums(arr: []const i64) i64 {
```

## example_test

```zig
test "countNums examples" {
    try std.testing.expectEqual(0, countNums(&[_]i64{}));
    try std.testing.expectEqual(1, countNums(&[_]i64{ -1, 11, -11 }));
    try std.testing.expectEqual(3, countNums(&[_]i64{ 1, 1, 2 }));
}
```
