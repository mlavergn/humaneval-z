## task_id

```
Zig/11
```

## prompt

```zig
const std = @import("std");

// Input are two strings a and b consisting only of 1s and 0s.
// Perform binary XOR on these inputs and return result also as a string.
// >>> stringXor(allocator, "010", "110")
// "100"
pub fn stringXor(allocator: std.mem.Allocator, a: []const u8, b: []const u8) ![]u8 {
```

## declaration

```zig
pub fn stringXor(allocator: std.mem.Allocator, a: []const u8, b: []const u8) ![]u8 {
```

## example_test

```zig
test "stringXor examples" {
    {
        const result = try stringXor(std.testing.allocator, "010", "110");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("100", result);
    }
}
```
