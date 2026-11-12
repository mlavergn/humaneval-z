## task_id

```
Zig/85
```

## prompt

```zig
const std = @import("std");

// Given a non-empty list of integers lst. Add the even elements that are at odd indices..
//
// Examples:
// add([4, 2, 6, 7]) ==> 2
pub fn add(lst: []const i64) i64 {
```

## declaration

```zig
pub fn add(lst: []const i64) i64 {
```

## example_test

```zig
test "add examples" {
    try std.testing.expectEqual(2, add(&[_]i64{ 4, 2, 6, 7 }));
}
```
