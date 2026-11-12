## task_id

```
Zig/50
```

## prompt

```zig
const std = @import("std");

// returns encoded string by shifting every character by 5 in the alphabet.
pub fn encodeShift(allocator: std.mem.Allocator, s: []const u8) ![]u8 {
    const result = try allocator.alloc(u8, s.len);
    for (s, 0..) |c, i| result[i] = (c - 'a' + 5) % 26 + 'a';
    return result;
}

// takes as input string encoded with encodeShift function. Returns decoded string.
pub fn decodeShift(allocator: std.mem.Allocator, s: []const u8) ![]u8 {
```

## declaration

```zig
pub fn decodeShift(allocator: std.mem.Allocator, s: []const u8) ![]u8 {
```

## example_test

```zig
```
