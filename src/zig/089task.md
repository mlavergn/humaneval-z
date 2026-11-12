## task_id

```
Zig/89
```

## prompt

```zig
const std = @import("std");

// Create a function Encrypt that takes a string as an argument and
// returns a string Encrypted with the alphabet being rotated.
// The alphabet should be rotated in a manner such that the letters
// shift down by two multiplied to two places.
// For example:
// encrypt(allocator, 'hi') returns 'lm'
// encrypt(allocator, 'asdfghjkl') returns 'ewhjklnop'
// encrypt(allocator, 'gf') returns 'kj'
// encrypt(allocator, 'et') returns 'ix'
pub fn encrypt(allocator: std.mem.Allocator, s: []const u8) ![]u8 {
```

## declaration

```zig
pub fn encrypt(allocator: std.mem.Allocator, s: []const u8) ![]u8 {
```

## example_test

```zig
test "encrypt examples" {
    {
        const result = try encrypt(std.testing.allocator, "hi");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("lm", result);
    }
    {
        const result = try encrypt(std.testing.allocator, "asdfghjkl");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("ewhjklnop", result);
    }
    {
        const result = try encrypt(std.testing.allocator, "gf");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("kj", result);
    }
    {
        const result = try encrypt(std.testing.allocator, "et");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("ix", result);
    }
}
```
