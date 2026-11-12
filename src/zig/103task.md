## task_id

```
Zig/103
```

## prompt

```zig
const std = @import("std");

// You are given two positive integers n and m, and your task is to compute the
// average of the integers from n through m (including n and m).
// Round the answer to the nearest integer and convert that to binary.
// If n is greater than m, return -1.
// Example:
// roundedAvg(allocator, 1, 5) => "0b11"
// roundedAvg(allocator, 7, 5) => -1
// roundedAvg(allocator, 10, 20) => "0b1111"
// roundedAvg(allocator, 20, 33) => "0b11010"
// Returns null where the original returns -1 (m < n).
pub fn roundedAvg(allocator: std.mem.Allocator, n: i64, m: i64) !?[]u8 {
```

## declaration

```zig
pub fn roundedAvg(allocator: std.mem.Allocator, n: i64, m: i64) !?[]u8 {
```

## example_test

```zig
test "roundedAvg examples" {
    {
        const result = (try roundedAvg(std.testing.allocator, 1, 5)).?;
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("0b11", result);
    }
    try std.testing.expect((try roundedAvg(std.testing.allocator, 7, 5)) == null);
    {
        const result = (try roundedAvg(std.testing.allocator, 10, 20)).?;
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("0b1111", result);
    }
    {
        const result = (try roundedAvg(std.testing.allocator, 20, 33)).?;
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("0b11011", result);
    }
}
```
