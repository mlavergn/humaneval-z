## task_id

```
Zig/21
```

## prompt

```zig
const std = @import("std");

// Given list of numbers (of at least two elements), apply a linear transform to that list,
// such that the smallest number will become 0 and the largest will become 1
// >>> rescaleToUnit(allocator, &.{ 1.0, 2.0, 3.0, 4.0, 5.0 })
// { 0.0, 0.25, 0.5, 0.75, 1.0 }
pub fn rescaleToUnit(allocator: std.mem.Allocator, numbers: []const f64) ![]f64 {
```

## declaration

```zig
pub fn rescaleToUnit(allocator: std.mem.Allocator, numbers: []const f64) ![]f64 {
```

## example_test

```zig
test "rescaleToUnit examples" {
    {
        const result = try rescaleToUnit(std.testing.allocator, &[_]f64{ 1.0, 2.0, 3.0, 4.0, 5.0 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]f64{ 0.0, 0.25, 0.5, 0.75, 1.0 }, result);
    }
}
```
