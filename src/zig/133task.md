## task_id

```
Zig/133
```

## prompt

```zig
const std = @import("std");

// You are given a list of numbers.
// You need to return the sum of squared numbers in the given list,
// round each element in the list to the upper int(Ceiling) first.
// Examples:
// For lst = [1,2,3] the output should be 14
// For lst = [1,4,9] the output should be 98
// For lst = [1,3,5,7] the output should be 84
// For lst = [1.4,4.2,0] the output should be 29
// For lst = [-2.4,1,1] the output should be 6
pub fn sumSquares(lst: []const f64) i64 {
```

## declaration

```zig
pub fn sumSquares(lst: []const f64) i64 {
```

## example_test

```zig
test "sumSquares examples" {
    try std.testing.expectEqual(14, sumSquares(&[_]f64{ 1, 2, 3 }));
    try std.testing.expectEqual(98, sumSquares(&[_]f64{ 1, 4, 9 }));
    try std.testing.expectEqual(84, sumSquares(&[_]f64{ 1, 3, 5, 7 }));
    try std.testing.expectEqual(29, sumSquares(&[_]f64{ 1.4, 4.2, 0 }));
    try std.testing.expectEqual(6, sumSquares(&[_]f64{ -2.4, 1, 1 }));
}
```
