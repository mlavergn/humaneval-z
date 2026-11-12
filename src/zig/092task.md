## task_id

```
Zig/92
```

## prompt

```zig
const std = @import("std");

// A dynamically typed value.
pub const Value = union(enum) {
    none,
    int: i64,
    float: f64,
    boolean: bool,
    string: []const u8,
    list: []const Value,
    dict: []const [2]Value,
};

// Create a function that takes 3 numbers.
// Returns true if one of the numbers is equal to the sum of the other two, and all numbers are integers.
// Returns false in any other cases.
//
// Examples
// anyInt(5, 2, 7) ➞ true
//
// anyInt(3, 2, 2) ➞ false
//
// anyInt(3, -2, 1) ➞ true
//
// anyInt(3.6, -2.2, 2) ➞ false
pub fn anyInt(x: Value, y: Value, z: Value) bool {
```

## declaration

```zig
pub fn anyInt(x: Value, y: Value, z: Value) bool {
```

## example_test

```zig
test "anyInt examples" {
    try std.testing.expect(anyInt(.{ .int = 5 }, .{ .int = 2 }, .{ .int = 7 }));
    try std.testing.expect(!anyInt(.{ .int = 3 }, .{ .int = 2 }, .{ .int = 2 }));
    try std.testing.expect(anyInt(.{ .int = 3 }, .{ .int = -2 }, .{ .int = 1 }));
    try std.testing.expect(!anyInt(.{ .float = 3.6 }, .{ .float = -2.2 }, .{ .int = 2 }));
}
```
