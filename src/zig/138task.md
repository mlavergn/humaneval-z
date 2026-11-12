## task_id

```
Zig/138
```

## prompt

```zig
const std = @import("std");

// Evaluate whether the given number n can be written as the sum of exactly 4 positive even numbers
// Example
// isEqualToSumEven(4) == false
// isEqualToSumEven(6) == false
// isEqualToSumEven(8) == true
pub fn isEqualToSumEven(n: i64) bool {
```

## declaration

```zig
pub fn isEqualToSumEven(n: i64) bool {
```

## example_test

```zig
test "isEqualToSumEven examples" {
    try std.testing.expect(!isEqualToSumEven(4));
    try std.testing.expect(!isEqualToSumEven(6));
    try std.testing.expect(isEqualToSumEven(8));
}
```
