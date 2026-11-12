## task_id

```
Zig/25
```

## prompt

```zig
const std = @import("std");

// Return list of prime factors of given integer in the order from smallest to largest.
// Each of the factors should be listed number of times corresponding to how many times it appeares in factorization.
// Input number should be equal to the product of all factors
// >>> factorize(allocator, 8)
// { 2, 2, 2 }
// >>> factorize(allocator, 25)
// { 5, 5 }
// >>> factorize(allocator, 70)
// { 2, 5, 7 }
pub fn factorize(allocator: std.mem.Allocator, n: i64) ![]i64 {
```

## declaration

```zig
pub fn factorize(allocator: std.mem.Allocator, n: i64) ![]i64 {
```

## example_test

```zig
test "factorize examples" {
    {
        const result = try factorize(std.testing.allocator, 8);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 2, 2 }, result);
    }
    {
        const result = try factorize(std.testing.allocator, 25);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 5, 5 }, result);
    }
    {
        const result = try factorize(std.testing.allocator, 70);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 5, 7 }, result);
    }
}
```
