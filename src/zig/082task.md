## task_id

```
Zig/82
```

## prompt

```zig
const std = @import("std");

// Write a function that takes a string and returns true if the string
// length is a prime number or false otherwise
// Examples
// primeLength('Hello') == true
// primeLength('abcdcba') == true
// primeLength('kittens') == true
// primeLength('orange') == false
pub fn primeLength(s: []const u8) bool {
```

## declaration

```zig
pub fn primeLength(s: []const u8) bool {
```

## example_test

```zig
test "primeLength examples" {
    try std.testing.expect(primeLength("Hello"));
    try std.testing.expect(primeLength("abcdcba"));
    try std.testing.expect(primeLength("kittens"));
    try std.testing.expect(!primeLength("orange"));
}
```
