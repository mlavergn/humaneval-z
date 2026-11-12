## task_id

```
Zig/79
```

## prompt

```zig
const std = @import("std");

// You will be given a number in decimal form and your task is to convert it to
// binary format. The function should return a string, with each character representing a binary
// number. Each character in the string will be '0' or '1'.
//
// There will be an extra couple of characters 'db' at the beginning and at the end of the string.
// The extra characters are there to help with the format.
//
// Examples:
// decimalToBinary(allocator, 15)   # returns "db1111db"
// decimalToBinary(allocator, 32)   # returns "db100000db"
pub fn decimalToBinary(allocator: std.mem.Allocator, decimal: i64) ![]u8 {
```

## declaration

```zig
pub fn decimalToBinary(allocator: std.mem.Allocator, decimal: i64) ![]u8 {
```

## example_test

```zig
test "decimalToBinary examples" {
    {
        const result = try decimalToBinary(std.testing.allocator, 32);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("db100000db", result);
    }
    {
        const result = try decimalToBinary(std.testing.allocator, 15);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("db1111db", result);
    }
}
```
