## task_id

```
Zig/53
```

## prompt

```zig
const std = @import("std");

// Add two numbers x and y
// >>> add(2, 3)
// 5
// >>> add(5, 7)
// 12
pub fn add(x: i64, y: i64) i64 {
```

## declaration

```zig
pub fn add(x: i64, y: i64) i64 {
```

## example_test

```zig
test "add examples" {
    try std.testing.expectEqual(5, add(2, 3));
    try std.testing.expectEqual(12, add(5, 7));
}
```
