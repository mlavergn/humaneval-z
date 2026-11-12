## task_id

```
Zig/40
```

## prompt

```zig
const std = @import("std");

// triplesSumToZero takes a list of integers as an input.
// it returns true if there are three distinct elements in the list that
// sum to zero, and false otherwise.
//
// >>> triplesSumToZero(&.{ 1, 3, 5, 0 })
// false
// >>> triplesSumToZero(&.{ 1, 3, -2, 1 })
// true
// >>> triplesSumToZero(&.{ 1, 2, 3, 7 })
// false
// >>> triplesSumToZero(&.{ 2, 4, -5, 3, 9, 7 })
// true
// >>> triplesSumToZero(&.{ 1 })
// false
pub fn triplesSumToZero(l: []const i64) bool {
```

## declaration

```zig
pub fn triplesSumToZero(l: []const i64) bool {
```

## example_test

```zig
test "triplesSumToZero examples" {
    try std.testing.expect(!triplesSumToZero(&[_]i64{ 1, 3, 5, 0 }));
    try std.testing.expect(triplesSumToZero(&[_]i64{ 1, 3, -2, 1 }));
    try std.testing.expect(!triplesSumToZero(&[_]i64{ 1, 2, 3, 7 }));
    try std.testing.expect(triplesSumToZero(&[_]i64{ 2, 4, -5, 3, 9, 7 }));
}
```
