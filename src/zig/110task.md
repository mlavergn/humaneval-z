## task_id

```
Zig/110
```

## prompt

```zig
const std = @import("std");

// In this problem, you will implement a function that takes two lists of numbers,
// and determines whether it is possible to perform an Exchange of elements
// between them to make lst1 a list of only even numbers.
// There is no limit on the number of Exchanged elements between lst1 and lst2.
// If it is possible to Exchange elements between the lst1 and lst2 to make
// all the elements of lst1 to be even, return "YES".
// Otherwise, return "NO".
// For example:
// exchange([1, 2, 3, 4], [1, 2, 3, 4]) => "YES"
// exchange([1, 2, 3, 4], [1, 5, 3, 4]) => "NO"
// It is assumed that the input lists will be non-empty.
pub fn exchange(lst1: []const i64, lst2: []const i64) []const u8 {
```

## declaration

```zig
pub fn exchange(lst1: []const i64, lst2: []const i64) []const u8 {
```

## example_test

```zig
test "exchange examples" {
    try std.testing.expectEqualStrings("YES", exchange(&[_]i64{ 1, 2, 3, 4 }, &[_]i64{ 1, 2, 3, 4 }));
    try std.testing.expectEqualStrings("NO", exchange(&[_]i64{ 1, 2, 3, 4 }, &[_]i64{ 1, 5, 3, 4 }));
}
```
