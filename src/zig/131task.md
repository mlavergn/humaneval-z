## task_id

```
Zig/131
```

## prompt

```zig
const std = @import("std");

// Given a positive integer n, return the product of the odd Digits.
// Return 0 if all Digits are even.
// For example:
// digits(1)  == 1
// digits(4)  == 0
// digits(235) == 15
pub fn digits(n: i64) i64 {
```

## declaration

```zig
pub fn digits(n: i64) i64 {
```

## example_test

```zig
test "digits examples" {
    try std.testing.expectEqual(1, digits(1));
    try std.testing.expectEqual(0, digits(4));
    try std.testing.expectEqual(15, digits(235));
}
```
