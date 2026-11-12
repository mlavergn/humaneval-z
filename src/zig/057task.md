## task_id

```
Zig/57
```

## prompt

```zig
const std = @import("std");

// Return true is list elements are Monotonically increasing or decreasing.
// >>> monotonic(&.{ 1, 2, 4, 20 })
// true
// >>> monotonic(&.{ 1, 20, 4, 10 })
// false
// >>> monotonic(&.{ 4, 1, 0, -10 })
// true
pub fn monotonic(l: []const i64) bool {
```

## declaration

```zig
pub fn monotonic(l: []const i64) bool {
```

## example_test

```zig
test "monotonic examples" {
    try std.testing.expect(monotonic(&[_]i64{ 1, 2, 4, 10 }));
    try std.testing.expect(!monotonic(&[_]i64{ 1, 20, 4, 10 }));
    try std.testing.expect(monotonic(&[_]i64{ 4, 1, 0, -10 }));
}
```
