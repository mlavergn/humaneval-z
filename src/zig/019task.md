## task_id

```
Zig/19
```

## prompt

```zig
const std = @import("std");

// Input is a space-delimited string of numberals from 'zero' to 'nine'.
// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
// Return the string with numbers sorted from smallest to largest
// >>> sortNumbers(allocator, "three one five")
// "one three five"
pub fn sortNumbers(allocator: std.mem.Allocator, numbers: []const u8) ![]u8 {
```

## declaration

```zig
pub fn sortNumbers(allocator: std.mem.Allocator, numbers: []const u8) ![]u8 {
```

## example_test

```zig
test "sortNumbers examples" {
    {
        const result = try sortNumbers(std.testing.allocator, "three one five");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("one three five", result);
    }
}
```
