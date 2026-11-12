## task_id

```
Zig/65
```

## prompt

```zig
const std = @import("std");

// Circular shift the digits of the integer x, shift the digits right by shift
// and return the result as a string.
// If shift > number of digits, return digits reversed.
// >>> circularShift(allocator, 12, 1)
// "21"
// >>> circularShift(allocator, 12, 2)
// "12"
pub fn circularShift(allocator: std.mem.Allocator, x: i64, shift: i64) ![]u8 {
```

## declaration

```zig
pub fn circularShift(allocator: std.mem.Allocator, x: i64, shift: i64) ![]u8 {
```

## example_test

```zig
test "circularShift examples" {
    {
        const result = try circularShift(std.testing.allocator, 12, 2);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("12", result);
    }
    {
        const result = try circularShift(std.testing.allocator, 12, 1);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("21", result);
    }
}
```
