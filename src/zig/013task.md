## task_id

```
Zig/13
```

## prompt

```zig
const std = @import("std");

// Return a greatest common divisor of two integers a and b
// >>> greatestCommonDivisor(3, 5)
// 1
// >>> greatestCommonDivisor(25, 15)
// 5
pub fn greatestCommonDivisor(a: i64, b: i64) i64 {
```

## declaration

```zig
pub fn greatestCommonDivisor(a: i64, b: i64) i64 {
```

## example_test

```zig
test "greatestCommonDivisor examples" {
    try std.testing.expectEqual(1, greatestCommonDivisor(3, 5));
    try std.testing.expectEqual(5, greatestCommonDivisor(25, 15));
}
```
