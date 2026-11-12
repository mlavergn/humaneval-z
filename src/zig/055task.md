## task_id

```
Zig/55
```

## prompt

```zig
const std = @import("std");

// Return n-th Fibonacci number.
// >>> fib(10)
// 55
// >>> fib(1)
// 1
// >>> fib(8)
// 21
pub fn fib(n: i64) i64 {
```

## declaration

```zig
pub fn fib(n: i64) i64 {
```

## example_test

```zig
test "fib examples" {
    try std.testing.expectEqual(55, fib(10));
    try std.testing.expectEqual(1, fib(1));
    try std.testing.expectEqual(21, fib(8));
}
```
