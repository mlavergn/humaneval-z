## task_id

```
Zig/136
```

## prompt

```zig
const std = @import("std");

// Create a function that returns a tuple (a, b), where 'a' is
// the largest of negative integers, and 'b' is the smallest
// of positive integers in a list.
// If there is no negative or positive integers, return them as null.
//
// Examples:
// largestSmallestIntegers([2, 4, 1, 3, 5, 7]) == (null, 1)
// largestSmallestIntegers([]) == (null, null)
// largestSmallestIntegers([0]) == (null, null)
// { largest negative integer, smallest positive integer }, null if none.
pub fn largestSmallestIntegers(lst: []const i64) [2]?i64 {
```

## declaration

```zig
pub fn largestSmallestIntegers(lst: []const i64) [2]?i64 {
```

## example_test

```zig
test "largestSmallestIntegers examples" {
    try std.testing.expectEqual([2]?i64{ null, 1 }, largestSmallestIntegers(&[_]i64{ 2, 4, 1, 3, 5, 7 }));
    try std.testing.expectEqual([2]?i64{ null, null }, largestSmallestIntegers(&[_]i64{}));
    try std.testing.expectEqual([2]?i64{ null, null }, largestSmallestIntegers(&[_]i64{ 0 }));
}
```
