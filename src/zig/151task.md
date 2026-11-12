## task_id

```
Zig/151
```

## prompt

```zig
const std = @import("std");

// Given a list of numbers, return the sum of squares of the numbers
// in the list that are odd. Ignore numbers that are negative or not integers.
//
// doubleTheDifference([1, 3, 2, 0]) == 1 + 9 + 0 + 0 = 10
// doubleTheDifference([-1, -2, 0]) == 0
// doubleTheDifference([9, -2]) == 81
// doubleTheDifference([0]) == 0
//
// If the input list is empty, return 0.
pub fn doubleTheDifference(lst: []const f64) i64 {
```

## declaration

```zig
pub fn doubleTheDifference(lst: []const f64) i64 {
```

## example_test

```zig
test "doubleTheDifference examples" {
    try std.testing.expectEqual(10, doubleTheDifference(&[_]f64{ 1, 3, 2, 0 }));
    try std.testing.expectEqual(0, doubleTheDifference(&[_]f64{ -1, -2, 0 }));
    try std.testing.expectEqual(81, doubleTheDifference(&[_]f64{ 9, -2 }));
    try std.testing.expectEqual(0, doubleTheDifference(&[_]f64{ 0 }));
}
```
