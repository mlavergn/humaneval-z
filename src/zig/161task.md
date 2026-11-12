## task_id

```
Zig/161
```

## prompt

```zig
const std = @import("std");

// You are given a string s.
// if s[i] is a letter, reverse its case from lower to upper or vise versa,
// otherwise keep it as it is.
// If the string contains no letters, reverse the string.
// The function should return the resulted string.
// Examples
// solve(allocator, "1234") = "4321"
// solve(allocator, "ab") = "AB"
// solve(allocator, "#a@C") = "#A@c"
pub fn solve(allocator: std.mem.Allocator, s: []const u8) ![]u8 {
```

## declaration

```zig
pub fn solve(allocator: std.mem.Allocator, s: []const u8) ![]u8 {
```

## example_test

```zig
test "solve examples" {
    {
        const result = try solve(std.testing.allocator, "1234");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("4321", result);
    }
    {
        const result = try solve(std.testing.allocator, "ab");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("AB", result);
    }
    {
        const result = try solve(std.testing.allocator, "#a@C");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("#A@c", result);
    }
}
```
