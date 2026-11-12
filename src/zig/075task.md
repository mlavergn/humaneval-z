## task_id

```
Zig/75
```

## prompt

```zig
const std = @import("std");

// Write a function that returns true if the given number is the multiplication of 3 prime numbers
// and false otherwise.
// Knowing that (a) is less then 100.
// Example:
// isMultiplyPrime(30) == true
// 30 = 2 * 3 * 5
pub fn isMultiplyPrime(a: i64) bool {
```

## declaration

```zig
pub fn isMultiplyPrime(a: i64) bool {
```

## example_test

```zig
test "isMultiplyPrime examples" {
    try std.testing.expect(isMultiplyPrime(30));
}
```
