## task_id

```
Zig/9
```

## prompt

```zig
const std = @import("std");

// From a given list of integers, generate a list of rolling maximum element found until given moment
// in the sequence.
// >>> rollingMax(allocator, &.{ 1, 2, 3, 2, 3, 4, 2 })
// { 1, 2, 3, 3, 3, 4, 4 }
pub fn rollingMax(allocator: std.mem.Allocator, numbers: []const i64) ![]i64 {
```

## declaration

```zig
pub fn rollingMax(allocator: std.mem.Allocator, numbers: []const i64) ![]i64 {
```

## example_test

```zig
test "rollingMax examples" {
    {
        const result = try rollingMax(std.testing.allocator, &[_]i64{ 1, 2, 3, 2, 3, 4, 2 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 2, 3, 3, 3, 4, 4 }, result);
    }
}
```
