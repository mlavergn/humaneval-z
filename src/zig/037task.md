## task_id

```
Zig/37
```

## prompt

```zig
const std = @import("std");

// This function takes a list l and returns a list l' such that
// l' is identical to l in the odd indicies, while its values at the even indicies are equal
// to the values of the even indicies of l, but sorted.
// >>> sortEven(allocator, &.{ 1, 2, 3 })
// { 1, 2, 3 }
// >>> sortEven(allocator, &.{ 5, 6, 3, 4 })
// { 3, 6, 5, 4 }
pub fn sortEven(allocator: std.mem.Allocator, l: []const i64) ![]i64 {
```

## declaration

```zig
pub fn sortEven(allocator: std.mem.Allocator, l: []const i64) ![]i64 {
```

## example_test

```zig
test "sortEven examples" {
    const cases = [_][2][]const i64{
        .{ &.{ 1, 2, 3 }, &.{ 1, 2, 3 } },
        .{ &.{ 5, 6, 3, 4 }, &.{ 3, 6, 5, 4 } },
    };
    for (cases) |case| {
        const result = try sortEven(std.testing.allocator, case[0]);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualSlices(i64, case[1], result);
    }
}
```
