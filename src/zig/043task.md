## task_id

```
Zig/43
```

## prompt

```zig
const std = @import("std");

// pairsSumToZero takes a list of integers as an input.
// it returns true if there are two distinct elements in the list that
// sum to zero, and false otherwise.
// >>> pairsSumToZero(&.{ 1, 3, 5, 0 })
// false
// >>> pairsSumToZero(&.{ 1, 3, -2, 1 })
// false
// >>> pairsSumToZero(&.{ 1, 2, 3, 7 })
// false
// >>> pairsSumToZero(&.{ 2, 4, -5, 3, 5, 7 })
// true
// >>> pairsSumToZero(&.{ 1 })
// false
pub fn pairsSumToZero(l: []const i64) bool {
```

## declaration

```zig
pub fn pairsSumToZero(l: []const i64) bool {
```

## example_test

```zig
test "pairsSumToZero examples" {
    try std.testing.expect(!pairsSumToZero(&[_]i64{ 1, 3, 5, 0 }));
    try std.testing.expect(!pairsSumToZero(&[_]i64{ 1, 3, -2, 1 }));
    try std.testing.expect(!pairsSumToZero(&[_]i64{ 1, 2, 3, 7 }));
    try std.testing.expect(pairsSumToZero(&[_]i64{ 2, 4, -5, 3, 5, 7 }));
}
```
