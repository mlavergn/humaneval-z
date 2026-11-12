## task_id

```
Zig/39
```

## prompt

```zig
const std = @import("std");

// primeFib returns n-th number that is a Fibonacci number and it's also prime.
// >>> primeFib(1)
// 2
// >>> primeFib(2)
// 3
// >>> primeFib(3)
// 5
// >>> primeFib(4)
// 13
// >>> primeFib(5)
// 89
pub fn primeFib(n: i64) i64 {
```

## declaration

```zig
pub fn primeFib(n: i64) i64 {
```

## example_test

```zig
test "primeFib examples" {
    try std.testing.expectEqual(2, primeFib(1));
    try std.testing.expectEqual(3, primeFib(2));
    try std.testing.expectEqual(5, primeFib(3));
    try std.testing.expectEqual(13, primeFib(4));
    try std.testing.expectEqual(89, primeFib(5));
}
```
