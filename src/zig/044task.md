## task_id

```
Zig/44
```

## prompt

```zig
const std = @import("std");

// Change numerical base of input number x to base.
// return string representation after the conversion.
// base numbers are less than 10.
// >>> changeBase(allocator, 8, 3)
// "22"
// >>> changeBase(allocator, 8, 2)
// "1000"
// >>> changeBase(allocator, 7, 2)
// "111"
pub fn changeBase(allocator: std.mem.Allocator, x: i64, base: i64) ![]u8 {
```

## declaration

```zig
pub fn changeBase(allocator: std.mem.Allocator, x: i64, base: i64) ![]u8 {
```

## example_test

```zig
test "changeBase examples" {
    {
        const result = try changeBase(std.testing.allocator, 8, 3);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("22", result);
    }
    {
        const result = try changeBase(std.testing.allocator, 8, 2);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("1000", result);
    }
    {
        const result = try changeBase(std.testing.allocator, 7, 2);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("111", result);
    }
}
```
