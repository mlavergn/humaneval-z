## task_id

```
Zig/132
```

## prompt

```zig
const std = @import("std");

// Create a function that takes a string as input which contains only square brackets.
// The function should return true if and only if there is a valid subsequence of brackets
// where at least one bracket in the subsequence is nested.
//
// isNested(allocator, '[[]]') ➞ true
// isNested(allocator, '[]]]]]]][[[[[]') ➞ false
// isNested(allocator, '[][]') ➞ false
// isNested(allocator, '[]') ➞ false
// isNested(allocator, '[[][]]') ➞ true
// isNested(allocator, '[[]][[') ➞ true
pub fn isNested(allocator: std.mem.Allocator, s: []const u8) !bool {
```

## declaration

```zig
pub fn isNested(allocator: std.mem.Allocator, s: []const u8) !bool {
```

## example_test

```zig
test "isNested examples" {
    try std.testing.expect((try isNested(std.testing.allocator, "[[]]")));
    try std.testing.expect(!(try isNested(std.testing.allocator, "[]]]]]]][[[[[]")));
    try std.testing.expect(!(try isNested(std.testing.allocator, "[][]")));
    try std.testing.expect(!(try isNested(std.testing.allocator, "'[]'")));
    try std.testing.expect((try isNested(std.testing.allocator, "[[]][[")));
    try std.testing.expect((try isNested(std.testing.allocator, "[[][]]")));
}
```
