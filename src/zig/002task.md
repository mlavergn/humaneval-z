## task_id

```
Zig/2
```

## prompt

```zig
const std = @import("std");

// Given a positive floating point number, it can be decomposed into
// and integer part (largest integer smaller than given number) and decimals
// (leftover part always smaller than 1).
//
// Return the decimal part of the number.
// >>> truncateNumber(3.5)
// 0.5
pub fn truncateNumber(number: f64) f64 {
```

## declaration

```zig
pub fn truncateNumber(number: f64) f64 {
```

## example_test

```zig
test "truncateNumber examples" {
    try std.testing.expectEqual(0.5, truncateNumber(3.5));
}
```
