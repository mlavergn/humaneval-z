## task_id

```
Zig/46
```

## prompt

```zig
const std = @import("std");

// The Fib4 number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
// fib4(0) -> 0
// fib4(1) -> 0
// fib4(2) -> 2
// fib4(3) -> 0
// fib4(n) -> fib4(n-1) + fib4(n-2) + fib4(n-3) + fib4(n-4).
// Please write a function to efficiently compute the n-th element of the Fib4 number sequence.  Do not use recursion.
// >>> fib4(5)
// 4
// >>> fib4(6)
// 8
// >>> fib4(7)
// 14
pub fn fib4(n: i64) i64 {
```

## declaration

```zig
pub fn fib4(n: i64) i64 {
```

## example_test

```zig
test "fib4 examples" {
    try std.testing.expectEqual(4, fib4(5));
    try std.testing.expectEqual(8, fib4(6));
    try std.testing.expectEqual(14, fib4(7));
}
```
