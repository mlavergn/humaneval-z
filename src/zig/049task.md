## task_id

```
Zig/49
```

## prompt

```zig
const std = @import("std");

// Return 2^n modulo p (be aware of numerics).
// >>> modp(3, 5)
// 3
// >>> modp(1101, 101)
// 2
// >>> modp(0, 101)
// 1
// >>> modp(3, 11)
// 8
// >>> modp(100, 101)
// 1
pub fn modp(n: i64, p: i64) i64 {
```

## declaration

```zig
pub fn modp(n: i64, p: i64) i64 {
```

## example_test

```zig
test "modp examples" {
    try std.testing.expectEqual(3, modp(3, 5));
    try std.testing.expectEqual(2, modp(1101, 101));
    try std.testing.expectEqual(1, modp(0, 101));
    try std.testing.expectEqual(8, modp(3, 11));
    try std.testing.expectEqual(1, modp(100, 101));
}
```
