## task_id

```
Zig/137
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

// Create a function that takes integers, floats, or strings representing
// real numbers, and returns the larger variable in its given variable type.
// Return null if the values are equal.
// Note: If a real number is represented as a string, the floating point might be . or ,
//
// compareOne(1, 2.5) ➞ 2.5
// compareOne(1, "2,3") ➞ "2,3"
// compareOne("5,1", "6") ➞ "6"
// compareOne("1", 1) ➞ null
// Returns the larger of a and b in its original type, or null if equal.
pub fn compareOne(a: Value, b: Value) ?Value {
```

## declaration

```zig
pub fn compareOne(a: Value, b: Value) ?Value {
```

## example_test

```zig
test "compareOne examples" {
    try std.testing.expectEqualDeep(@as(?Value, .{ .float = 2.5 }), compareOne(.{ .int = 1 }, .{ .float = 2.5 }));
    try std.testing.expectEqualDeep(@as(?Value, .{ .string = "2,3" }), compareOne(.{ .int = 1 }, .{ .string = "2,3" }));
    try std.testing.expectEqualDeep(@as(?Value, .{ .string = "6" }), compareOne(.{ .string = "5,1" }, .{ .string = "6" }));
    try std.testing.expectEqualDeep(@as(?Value, null), compareOne(.{ .string = "1" }, .{ .int = 1 }));
}
```
