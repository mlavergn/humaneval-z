## task_id

```
Zig/62
```

## prompt

```zig
const std = @import("std");

// xs represent coefficients of a polynomial.
// xs[0] + xs[1] * x + xs[2] * x^2 + ....
// Return Derivative of this polynomial in the same form.
// >>> derivative(allocator, &.{ 3, 1, 2, 4, 5 })
// { 1, 4, 12, 20 }
// >>> derivative(allocator, &.{ 1, 2, 3 })
// { 2, 6 }
pub fn derivative(allocator: std.mem.Allocator, xs: []const i64) ![]i64 {
```

## declaration

```zig
pub fn derivative(allocator: std.mem.Allocator, xs: []const i64) ![]i64 {
```

## example_test

```zig
test "derivative examples" {
    {
        const result = try derivative(std.testing.allocator, &[_]i64{ 3, 1, 2, 4, 5 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 4, 12, 20 }, result);
    }
    {
        const result = try derivative(std.testing.allocator, &[_]i64{ 1, 2, 3 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 6 }, result);
    }
}
```
