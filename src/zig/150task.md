## task_id

```
Zig/150
```

## prompt

```zig
const std = @import("std");

// A simple program which should return the value of x if n is
// a prime number and should return the value of y otherwise.
//
// Examples:
// for xOrY(7, 34, 12) == 34
// for xOrY(15, 8, 5) == 5
pub fn xOrY(n: i64, x: i64, y: i64) i64 {
```

## declaration

```zig
pub fn xOrY(n: i64, x: i64, y: i64) i64 {
```

## example_test

```zig
test "xOrY examples" {
    try std.testing.expectEqual(34, xOrY(7, 34, 12));
    try std.testing.expectEqual(5, xOrY(15, 8, 5));
}
```
