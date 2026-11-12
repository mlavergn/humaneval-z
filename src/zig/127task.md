## task_id

```
Zig/127
```

## prompt

```zig
const std = @import("std");

// You are given two intervals,
// where each interval is a pair of integers. For example, interval = (start, end) = (1, 2).
// The given intervals are closed which means that the interval (start, end)
// includes both start and end.
// For each given interval, it is assumed that its start is less or equal its end.
// Your task is to determine whether the length of Intersection of these two
// intervals is a prime number.
// Example, the Intersection of the intervals (1, 3), (2, 4) is (2, 3)
// which its length is 1, which not a prime number.
// If the length of the Intersection is a prime number, return "YES",
// otherwise, return "NO".
// If the two intervals don't intersect, return "NO".
//
//
// [input/output] samples:
// intersection((1, 2), (2, 3)) ==> "NO"
// intersection((-1, 1), (0, 4)) ==> "NO"
// intersection((-3, -1), (-5, 5)) ==> "YES"
pub fn intersection(interval1: [2]i64, interval2: [2]i64) []const u8 {
```

## declaration

```zig
pub fn intersection(interval1: [2]i64, interval2: [2]i64) []const u8 {
```

## example_test

```zig
test "intersection examples" {
    try std.testing.expectEqualStrings("NO", intersection([2]i64{ 1, 2 }, [2]i64{ 2, 3 }));
    try std.testing.expectEqualStrings("NO", intersection([2]i64{ -1, 1 }, [2]i64{ 0, 4 }));
    try std.testing.expectEqualStrings("YES", intersection([2]i64{ -3, -1 }, [2]i64{ -5, 5 }));
}
```
