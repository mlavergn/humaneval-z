## task_id

```
Zig/52
```

## prompt

```zig
const std = @import("std");

// Return true if all numbers in the list l are below threshold t.
// >>> belowThreshold(&.{ 1, 2, 4, 10 }, 100)
// true
// >>> belowThreshold(&.{ 1, 20, 4, 10 }, 5)
// false
pub fn belowThreshold(l: []const i64, t: i64) bool {
```

## declaration

```zig
pub fn belowThreshold(l: []const i64, t: i64) bool {
```

## example_test

```zig
test "belowThreshold examples" {
    try std.testing.expect(belowThreshold(&[_]i64{ 1, 2, 4, 10 }, 100));
    try std.testing.expect(!belowThreshold(&[_]i64{ 1, 20, 4, 10 }, 5));
}
```
