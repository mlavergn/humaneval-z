## task_id

```
Zig/59
```

## prompt

```zig
const std = @import("std");

// Return the largest prime factor of n. Assume n > 1 and is not a prime.
// >>> largestPrimeFactor(13195)
// 29
// >>> largestPrimeFactor(2048)
// 2
pub fn largestPrimeFactor(n: i64) i64 {
```

## declaration

```zig
pub fn largestPrimeFactor(n: i64) i64 {
```

## example_test

```zig
test "largestPrimeFactor examples" {
    try std.testing.expectEqual(2, largestPrimeFactor(2048));
    try std.testing.expectEqual(29, largestPrimeFactor(13195));
}
```
