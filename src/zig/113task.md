## task_id

```
Zig/113
```

## prompt

```zig
const std = @import("std");

// Given a list of strings, where each string consists of only digits, return a list.
// Each element i of the output should be "the number of odd elements in the
// string i of the input." where all the i's should be replaced by the number
// of odd digits in the i'th string of the input.
//
// >>> oddCount(allocator, &.{ "1234567" })
// { "the number of odd elements 4n the str4ng 4 of the 4nput." }
// >>> oddCount(allocator, &.{ "3", "11111111" })
// ["the number of odd elements 1n the str1ng 1 of the 1nput.",
// "the number of odd elements 8n the str8ng 8 of the 8nput."]
pub fn oddCount(allocator: std.mem.Allocator, lst: []const []const u8) ![][]u8 {
```

## declaration

```zig
pub fn oddCount(allocator: std.mem.Allocator, lst: []const []const u8) ![][]u8 {
```

## example_test

```zig
test "oddCount examples" {
    {
        const result = try oddCount(std.testing.allocator, &[_][]const u8{ "1234567" });
        defer {
            for (result) |s| std.testing.allocator.free(s);
            std.testing.allocator.free(result);
        }
        const expected: []const []const u8 = &[_][]const u8{ "the number of odd elements 4n the str4ng 4 of the 4nput." };
        try std.testing.expectEqual(expected.len, result.len);
        for (expected, result) |e, r| try std.testing.expectEqualStrings(e, r);
    }
    {
        const result = try oddCount(std.testing.allocator, &[_][]const u8{ "3", "11111111" });
        defer {
            for (result) |s| std.testing.allocator.free(s);
            std.testing.allocator.free(result);
        }
        const expected: []const []const u8 = &[_][]const u8{ "the number of odd elements 1n the str1ng 1 of the 1nput.", "the number of odd elements 8n the str8ng 8 of the 8nput." };
        try std.testing.expectEqual(expected.len, result.len);
        for (expected, result) |e, r| try std.testing.expectEqualStrings(e, r);
    }
}
```
