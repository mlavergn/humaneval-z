## task_id

```
Zig/3
```

## prompt

```zig
const std = @import("std");

// You're given a list of deposit and withdrawal operations on a bank account that starts with
// zero balance. Your task is to detect if at any point the balance of account fallls below zero, and
// at that point function should return true. Otherwise it should return false.
// >>> belowZero(&.{ 1, 2, 3 })
// false
// >>> belowZero(&.{ 1, 2, -4, 5 })
// true
pub fn belowZero(operations: []const i64) bool {
```

## declaration

```zig
pub fn belowZero(operations: []const i64) bool {
```

## example_test

```zig
test "belowZero examples" {
    try std.testing.expect(!belowZero(&[_]i64{ 1, 2, 3 }));
    try std.testing.expect(belowZero(&[_]i64{ 1, 2, -4, 5 }));
}
```
