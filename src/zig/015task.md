## task_id

```
Zig/15
```

## prompt

```zig
const std = @import("std");

// Return a string containing space-delimited numbers starting from 0 upto n inclusive.
// >>> stringSequence(allocator, 0)
// "0"
// >>> stringSequence(allocator, 5)
// "0 1 2 3 4 5"
pub fn stringSequence(allocator: std.mem.Allocator, n: i64) ![]u8 {
```

## declaration

```zig
pub fn stringSequence(allocator: std.mem.Allocator, n: i64) ![]u8 {
```

## example_test

```zig
test "stringSequence examples" {
    {
        const result = try stringSequence(std.testing.allocator, 0);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("0", result);
    }
    {
        const result = try stringSequence(std.testing.allocator, 5);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("0 1 2 3 4 5", result);
    }
}
```
