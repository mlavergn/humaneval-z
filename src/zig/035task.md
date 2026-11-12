## task_id

```
Zig/35
```

## prompt

```zig
const std = @import("std");

// Return maximum element in the list.
// >>> maxElement(&.{ 1, 2, 3 })
// 3
// >>> maxElement(&.{ 5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10 })
// 123
pub fn maxElement(l: []const i64) i64 {
```

## declaration

```zig
pub fn maxElement(l: []const i64) i64 {
```

## example_test

```zig
test "maxElement examples" {
    try std.testing.expectEqual(3, maxElement(&[_]i64{ 1, 2, 3 }));
    try std.testing.expectEqual(123, maxElement(&[_]i64{ 5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10 }));
}
```
