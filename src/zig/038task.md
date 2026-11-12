## task_id

```
Zig/38
```

## prompt

```zig
const std = @import("std");

// returns encoded string by cycling groups of three characters.
pub fn encodeCyclic(allocator: std.mem.Allocator, s: []const u8) ![]u8 {
    const result = try allocator.dupe(u8, s);
    var i: usize = 0;
    while (i + 3 <= s.len) : (i += 3) {
        result[i] = s[i + 1];
        result[i + 1] = s[i + 2];
        result[i + 2] = s[i];
    }
    return result;
}

// takes as input string encoded with encodeCyclic function. Returns decoded string.
pub fn decodeCyclic(allocator: std.mem.Allocator, s: []const u8) ![]u8 {
```

## declaration

```zig
pub fn decodeCyclic(allocator: std.mem.Allocator, s: []const u8) ![]u8 {
```

## example_test

```zig
```
