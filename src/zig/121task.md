## task_id

```
Zig/121
```

## prompt

```zig
const std = @import("std");

// Given a non-empty list of integers, return the sum of all of the odd elements that are in even positions.
//
// Examples
// solution([5, 8, 7, 1]) ==> 12
// solution([3, 3, 3, 3, 3]) ==> 9
// solution([30, 13, 24, 321]) ==>0
pub fn solution(lst: []const i64) i64 {
```

## declaration

```zig
pub fn solution(lst: []const i64) i64 {
```

## example_test

```zig
test "solution examples" {
    try std.testing.expectEqual(12, solution(&[_]i64{ 5, 8, 7, 1 }));
    try std.testing.expectEqual(9, solution(&[_]i64{ 3, 3, 3, 3, 3 }));
    try std.testing.expectEqual(0, solution(&[_]i64{ 30, 13, 24, 321 }));
}
```
