## task_id

```
Zig/126
```

## prompt

```zig
const std = @import("std");

// Given a list of numbers, return whether or not they are sorted
// in ascending order. If list has more than 1 duplicate of the same
// number, return false. Assume no negative numbers and only integers.
//
// Examples
// isSorted([5]) ➞ true
// isSorted([1, 2, 3, 4, 5]) ➞ true
// isSorted([1, 3, 2, 4, 5]) ➞ false
// isSorted([1, 2, 3, 4, 5, 6]) ➞ true
// isSorted([1, 2, 3, 4, 5, 6, 7]) ➞ true
// isSorted([1, 3, 2, 4, 5, 6, 7]) ➞ false
// isSorted([1, 2, 2, 3, 3, 4]) ➞ true
// isSorted([1, 2, 2, 2, 3, 4]) ➞ false
pub fn isSorted(lst: []const i64) bool {
```

## declaration

```zig
pub fn isSorted(lst: []const i64) bool {
```

## example_test

```zig
test "isSorted examples" {
    try std.testing.expect(isSorted(&[_]i64{ 5 }));
    try std.testing.expect(isSorted(&[_]i64{ 1, 2, 3, 4, 5 }));
    try std.testing.expect(!isSorted(&[_]i64{ 1, 3, 2, 4, 5 }));
    try std.testing.expect(isSorted(&[_]i64{ 1, 2, 3, 4, 5, 6 }));
    try std.testing.expect(isSorted(&[_]i64{ 1, 2, 3, 4, 5, 6, 7 }));
    try std.testing.expect(!isSorted(&[_]i64{ 1, 3, 2, 4, 5, 6, 7 }));
    try std.testing.expect(!isSorted(&[_]i64{ 1, 2, 2, 2, 3, 4 }));
    try std.testing.expect(isSorted(&[_]i64{ 1, 2, 2, 3, 3, 4 }));
}
```
