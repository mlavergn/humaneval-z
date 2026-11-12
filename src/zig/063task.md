## task_id

```
Zig/63
```

## prompt

```zig
const std = @import("std");

// The FibFib number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
// fibfib(0) == 0
// fibfib(1) == 0
// fibfib(2) == 1
// fibfib(n) == fibfib(n-1) + fibfib(n-2) + fibfib(n-3).
// Please write a function to efficiently compute the n-th element of the Fibfib number sequence.
// >>> fibfib(1)
// 0
// >>> fibfib(5)
// 4
// >>> fibfib(8)
// 24
pub fn fibfib(n: i64) i64 {
```

## declaration

```zig
pub fn fibfib(n: i64) i64 {
```

## example_test

```zig
test "fibfib examples" {
    try std.testing.expectEqual(0, fibfib(1));
    try std.testing.expectEqual(4, fibfib(5));
    try std.testing.expectEqual(24, fibfib(8));
}
```
