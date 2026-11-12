## task_id

```
Zig/6
```

## prompt

```zig
const std = @import("std");

// Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
// For each of the group, output the deepest level of nesting of parentheses.
// E.g. (()()) has maximum two levels of nesting while ((())) has three.
//
// >>> parseNestedParens(allocator, "(()()) ((())) () ((())()())")
// { 2, 3, 1, 3 }
pub fn parseNestedParens(allocator: std.mem.Allocator, paren_string: []const u8) ![]i64 {
```

## declaration

```zig
pub fn parseNestedParens(allocator: std.mem.Allocator, paren_string: []const u8) ![]i64 {
```

## example_test

```zig
test "parseNestedParens examples" {
    {
        const result = try parseNestedParens(std.testing.allocator, "(()()) ((())) () ((())()())");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 3, 1, 3 }, result);
    }
}
```
