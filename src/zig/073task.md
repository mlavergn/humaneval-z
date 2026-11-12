## task_id

```
Zig/73
```

## prompt

```zig
const std = @import("std");

// Given an array arr of integers, find the minimum number of elements that
// need to be changed to make the array palindromic. A palindromic array is an array that
// is read the same backwards and forwards. In one change, you can change one element to any other element.
//
// For example:
// smallestChange([1,2,3,5,4,7,9,6]) == 4
// smallestChange([1, 2, 3, 4, 3, 2, 2]) == 1
// smallestChange([1, 2, 3, 2, 1]) == 0
pub fn smallestChange(arr: []const i64) i64 {
```

## declaration

```zig
pub fn smallestChange(arr: []const i64) i64 {
```

## example_test

```zig
test "smallestChange examples" {
    try std.testing.expectEqual(4, smallestChange(&[_]i64{ 1, 2, 3, 5, 4, 7, 9, 6 }));
    try std.testing.expectEqual(1, smallestChange(&[_]i64{ 1, 2, 3, 4, 3, 2, 2 }));
    try std.testing.expectEqual(0, smallestChange(&[_]i64{ 1, 2, 3, 2, 1 }));
    try std.testing.expectEqual(0, smallestChange(&[_]i64{ 3, 1, 1, 3 }));
}
```
