## task_id

```
Zig/31
```

## prompt

```zig
const std = @import("std");

// Return true if a given number is prime, and false otherwise.
// >>> isPrime(6)
// false
// >>> isPrime(101)
// true
// >>> isPrime(11)
// true
// >>> isPrime(13441)
// true
// >>> isPrime(61)
// true
// >>> isPrime(4)
// false
// >>> isPrime(1)
// false
pub fn isPrime(n: i64) bool {
```

## declaration

```zig
pub fn isPrime(n: i64) bool {
```

## example_test

```zig
test "isPrime examples" {
    try std.testing.expect(!isPrime(6));
    try std.testing.expect(isPrime(101));
    try std.testing.expect(isPrime(11));
    try std.testing.expect(isPrime(13441));
    try std.testing.expect(isPrime(61));
    try std.testing.expect(!isPrime(4));
    try std.testing.expect(!isPrime(1));
}
```
