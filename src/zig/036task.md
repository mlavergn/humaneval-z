## task_id

```
Zig/36
```

## prompt

```zig
const std = @import("std");

// Return the number of times the digit 7 appears in integers less than n which are divisible by 11 or 13.
// >>> fizzBuzz(50)
// 0
// >>> fizzBuzz(78)
// 2
// >>> fizzBuzz(79)
// 3
pub fn fizzBuzz(n: i64) i64 {
```

## declaration

```zig
pub fn fizzBuzz(n: i64) i64 {
```

## example_test

```zig
test "fizzBuzz examples" {
    try std.testing.expectEqual(0, fizzBuzz(50));
    try std.testing.expectEqual(2, fizzBuzz(78));
    try std.testing.expectEqual(3, fizzBuzz(79));
}
```
