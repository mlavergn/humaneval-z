## task_id

```
Zig/155
```

## prompt

```zig
const std = @import("std");

// Given an integer. return a tuple that has the number of even and odd digits respectively.
//
// Example:
// evenOddCount(-12) ==> (1, 1)
// evenOddCount(123) ==> (1, 2)
pub fn evenOddCount(num: i64) [2]i64 {
```

## declaration

```zig
pub fn evenOddCount(num: i64) [2]i64 {
```

## example_test

```zig
test "evenOddCount examples" {
    try std.testing.expectEqual([2]i64{ 1, 1 }, evenOddCount(-12));
    try std.testing.expectEqual([2]i64{ 1, 2 }, evenOddCount(123));
}
```
