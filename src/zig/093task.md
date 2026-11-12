## task_id

```
Zig/93
```

## prompt

```zig
const std = @import("std");

// Write a function that takes a message, and Encodes in such a
// way that it swaps case of all letters, replaces all vowels in
// the message with the letter that appears 2 places ahead of that
// vowel in the english alphabet.
// Assume only letters.
//
// Examples:
// >>> encode(allocator, "test")
// "TGST"
// >>> encode(allocator, "This is a message")
// "tHKS KS C MGSSCGG"
pub fn encode(allocator: std.mem.Allocator, message: []const u8) ![]u8 {
```

## declaration

```zig
pub fn encode(allocator: std.mem.Allocator, message: []const u8) ![]u8 {
```

## example_test

```zig
test "encode examples" {
    {
        const result = try encode(std.testing.allocator, "test");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("TGST", result);
    }
    {
        const result = try encode(std.testing.allocator, "This is a message");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("tHKS KS C MGSSCGG", result);
    }
}
```
