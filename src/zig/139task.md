## task_id

```
Zig/139
```

## prompt

```zig
const std = @import("std");

// The Brazilian factorial is defined as:
// brazilian_factorial(n) = n! * (n-1)! * (n-2)! * ... * 1!
// where n > 0
//
// For example:
// >>> specialFactorial(4)
// 288
//
// The function will receive an integer as input and should return the special
// factorial of this integer.
pub fn specialFactorial(n: i64) i64 {
```

## declaration

```zig
pub fn specialFactorial(n: i64) i64 {
```

## example_test

```zig
test "specialFactorial examples" {
    try std.testing.expectEqual(288, specialFactorial(4));
}
```
