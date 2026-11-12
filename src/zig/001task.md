## task_id

```
Zig/1
```

## prompt

```zig
const std = @import("std");

// Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
// separate those group into separate strings and return the list of those.
// Separate groups are balanced (each open brace is properly closed) and not nested within each other
// Ignore any spaces in the input string.
// >>> separateParenGroups(allocator, "( ) (( )) (( )( ))")
// { "()", "(())", "(()())" }
pub fn separateParenGroups(allocator: std.mem.Allocator, paren_string: []const u8) ![][]u8 {
```

## declaration

```zig
pub fn separateParenGroups(allocator: std.mem.Allocator, paren_string: []const u8) ![][]u8 {
```

## example_test

```zig
test "separateParenGroups examples" {
    {
        const result = try separateParenGroups(std.testing.allocator, "( ) (( )) (( )( ))");
        defer {
            for (result) |s| std.testing.allocator.free(s);
            std.testing.allocator.free(result);
        }
        const expected: []const []const u8 = &[_][]const u8{ "()", "(())", "(()())" };
        try std.testing.expectEqual(expected.len, result.len);
        for (expected, result) |e, r| try std.testing.expectEqualStrings(e, r);
    }
}
```
