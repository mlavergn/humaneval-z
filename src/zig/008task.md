## task_id

```
Zig/8
```

## prompt

```zig
const std = @import("std");

// For a given list of integers, return a tuple consisting of a sum and a product of all the integers in a list.
// Empty sum should be equal to 0 and empty product should be equal to 1.
// >>> sumProduct(&.{})
// { 0, 1 }
// >>> sumProduct(&.{ 1, 2, 3, 4 })
// { 10, 24 }
pub fn sumProduct(numbers: []const i64) [2]i64 {
```

## declaration

```zig
pub fn sumProduct(numbers: []const i64) [2]i64 {
```

## example_test

```zig
test "sumProduct examples" {
    try std.testing.expectEqual([2]i64{ 0, 1 }, sumProduct(&[_]i64{}));
    try std.testing.expectEqual([2]i64{ 10, 24 }, sumProduct(&[_]i64{ 1, 2, 3, 4 }));
}
```
