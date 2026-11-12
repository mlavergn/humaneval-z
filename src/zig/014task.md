## task_id

```
Zig/14
```

## prompt

```zig
const std = @import("std");

// Return list of all prefixes from shortest to longest of the input string
// >>> allPrefixes(allocator, "abc")
// { "a", "ab", "abc" }
pub fn allPrefixes(allocator: std.mem.Allocator, str: []const u8) ![][]const u8 {
```

## declaration

```zig
pub fn allPrefixes(allocator: std.mem.Allocator, str: []const u8) ![][]const u8 {
```

## example_test

```zig
test "allPrefixes examples" {
    {
        const result = try allPrefixes(std.testing.allocator, "abc");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "a", "ab", "abc" }, result);
    }
}
```
