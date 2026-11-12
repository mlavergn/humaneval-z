## task_id

```
Zig/135
```

## prompt

```zig
const std = @import("std");

// Create a function which returns the largest index of an element which
// is not greater than or equal to the element immediately preceding it. If
// no such element exists then return -1. The given array will not contain
// duplicate values.
//
// Examples:
// canArrange([1,2,4,3,5]) = 3
// canArrange([1,2,3]) = -1
pub fn canArrange(arr: []const i64) i64 {
```

## declaration

```zig
pub fn canArrange(arr: []const i64) i64 {
```

## example_test

```zig
test "canArrange examples" {
    try std.testing.expectEqual(3, canArrange(&[_]i64{ 1, 2, 4, 3, 5 }));
    try std.testing.expectEqual(-1, canArrange(&[_]i64{ 1, 2, 3 }));
}
```
