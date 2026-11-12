## task_id

```
Zig/33
```

## prompt

```zig
const std = @import("std");

// This function takes a list l and returns a list l' such that
// l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal
// to the values of the corresponding indicies of l, but sorted.
// >>> sortThird(allocator, &.{ 1, 2, 3 })
// { 1, 2, 3 }
// >>> sortThird(allocator, &.{ 5, 6, 3, 4, 8, 9, 2 })
// { 2, 6, 3, 4, 8, 9, 5 }
pub fn sortThird(allocator: std.mem.Allocator, l: []const i64) ![]i64 {
```

## declaration

```zig
pub fn sortThird(allocator: std.mem.Allocator, l: []const i64) ![]i64 {
```

## example_test

```zig
test "sortThird examples" {
    const cases = [_][2][]const i64{
        .{ &.{ 1, 2, 3 }, &.{ 1, 2, 3 } },
        .{ &.{ 5, 6, 3, 4, 8, 9, 2 }, &.{ 2, 6, 3, 4, 8, 9, 5 } },
    };
    for (cases) |case| {
        const result = try sortThird(std.testing.allocator, case[0]);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualSlices(i64, case[1], result);
    }
}
```
