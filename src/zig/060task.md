## task_id

```
Zig/60
```

## prompt

```zig
const std = @import("std");

// sumToN is a function that sums numbers from 1 to n.
// >>> sumToN(30)
// 465
// >>> sumToN(100)
// 5050
// >>> sumToN(5)
// 15
// >>> sumToN(10)
// 55
// >>> sumToN(1)
// 1
pub fn sumToN(n: i64) i64 {
```

## declaration

```zig
pub fn sumToN(n: i64) i64 {
```

## example_test

```zig
test "sumToN examples" {
    try std.testing.expectEqual(1, sumToN(1));
    try std.testing.expectEqual(15, sumToN(5));
    try std.testing.expectEqual(55, sumToN(10));
    try std.testing.expectEqual(465, sumToN(30));
    try std.testing.expectEqual(5050, sumToN(100));
}
```
