## task_id

```
Zig/24
```

## prompt

```zig
const std = @import("std");

// For a given number n, find the largest number that divides n evenly, smaller than n
// >>> largestDivisor(15)
// 5
pub fn largestDivisor(n: i64) i64 {
```

## declaration

```zig
pub fn largestDivisor(n: i64) i64 {
```

## example_test

```zig
test "largestDivisor examples" {
    try std.testing.expectEqual(5, largestDivisor(15));
}
```
