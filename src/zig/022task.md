## task_id

```
Zig/22
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

// Filter given list of any values only for integers
// >>> filterIntegers(allocator, &.{ "a", 3.14, 5 })
// { 5 }
// >>> filterIntegers(allocator, &.{ 1, 2, 3, "abc", &.{}, &.{} })
// { 1, 2, 3 }
pub fn filterIntegers(allocator: std.mem.Allocator, values: []const Value) ![]i64 {
```

## declaration

```zig
pub fn filterIntegers(allocator: std.mem.Allocator, values: []const Value) ![]i64 {
```

## example_test

```zig
test "filterIntegers examples" {
    {
        const result = try filterIntegers(std.testing.allocator, &[_]Value{ .{ .string = "a" }, .{ .float = 3.14 }, .{ .int = 5 } });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 5 }, result);
    }
    {
        const result = try filterIntegers(std.testing.allocator, &[_]Value{ .{ .int = 1 }, .{ .int = 2 }, .{ .int = 3 }, .{ .string = "abc" }, .none, .{ .list = &.{} } });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 2, 3 }, result);
    }
}
```
