## task_id

```
Zig/77
```

## prompt

```zig
const std = @import("std");

// Write a function that takes an integer a and returns true
// if this ingeger is a cube of some integer number.
// Note: you may assume the input is always valid.
// Examples:
// iscube(1) ==> true
// iscube(2) ==> false
// iscube(-1) ==> true
// iscube(64) ==> true
// iscube(0) ==> true
// iscube(180) ==> false
pub fn iscube(a: i64) bool {
```

## declaration

```zig
pub fn iscube(a: i64) bool {
```

## example_test

```zig
test "iscube examples" {
    try std.testing.expect(iscube(1));
    try std.testing.expect(!iscube(2));
    try std.testing.expect(iscube(-1));
    try std.testing.expect(iscube(64));
    try std.testing.expect(!iscube(180));
    try std.testing.expect(iscube(0));
}
```
