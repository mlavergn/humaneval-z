## task_id

```
Zig/146
```

## prompt

```zig
const std = @import("std");

// Write a function that takes an array of numbers as input and returns
// the number of elements in the array that are greater than 10 and both
// first and last digits of a number are odd (1, 3, 5, 7, 9).
// For example:
// specialfilter([15, -73, 14, -15]) => 1
// specialfilter([33, -2, -3, 45, 21, 109]) => 2
pub fn specialfilter(nums: []const i64) i64 {
```

## declaration

```zig
pub fn specialfilter(nums: []const i64) i64 {
```

## example_test

```zig
test "specialfilter examples" {
    try std.testing.expectEqual(1, specialfilter(&[_]i64{ 15, -73, 14, -15 }));
    try std.testing.expectEqual(2, specialfilter(&[_]i64{ 33, -2, -3, 45, 21, 109 }));
}
```
