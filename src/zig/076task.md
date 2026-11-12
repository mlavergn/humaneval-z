## task_id

```
Zig/76
```

## prompt

```zig
const std = @import("std");

// Your task is to write a function that returns true if a number x is a simple
// power of n and false in other cases.
// x is a simple power of n if n**int=x
// For example:
// isSimplePower(1, 4) => true
// isSimplePower(2, 2) => true
// isSimplePower(8, 2) => true
// isSimplePower(3, 2) => false
// isSimplePower(3, 1) => false
// isSimplePower(5, 3) => false
pub fn isSimplePower(x: i64, n: i64) bool {
```

## declaration

```zig
pub fn isSimplePower(x: i64, n: i64) bool {
```

## example_test

```zig
test "isSimplePower examples" {
    try std.testing.expect(isSimplePower(1, 4));
    try std.testing.expect(isSimplePower(2, 2));
    try std.testing.expect(isSimplePower(8, 2));
    try std.testing.expect(!isSimplePower(3, 2));
    try std.testing.expect(!isSimplePower(3, 1));
    try std.testing.expect(!isSimplePower(5, 3));
}
```
