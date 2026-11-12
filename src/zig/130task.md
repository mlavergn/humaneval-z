## task_id

```
Zig/130
```

## prompt

```zig
const std = @import("std");

// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in
// the last couple centuries. However, what people don't know is Tribonacci sequence.
// Tribonacci sequence is defined by the recurrence:
// tri(allocator, 1) = 3
// tri(allocator, n) = 1 + n / 2, if n is even.
// tri(allocator, n) =  tri(allocator, n - 1) + tri(allocator, n - 2) + tri(allocator, n + 1), if n is odd.
// For example:
// tri(allocator, 2) = 1 + (2 / 2) = 2
// tri(allocator, 4) = 3
// tri(allocator, 3) = tri(allocator, 2) + tri(allocator, 1) + tri(allocator, 4)
// = 2 + 3 + 3 = 8
// You are given a non-negative integer number n, you have to a return a list of the
// first n + 1 numbers of the Tribonacci sequence.
// Examples:
// tri(allocator, 3) = [1, 3, 2, 8]
pub fn tri(allocator: std.mem.Allocator, n: i64) ![]f64 {
```

## declaration

```zig
pub fn tri(allocator: std.mem.Allocator, n: i64) ![]f64 {
```

## example_test

```zig
test "tri examples" {
    {
        const result = try tri(std.testing.allocator, 3);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]f64{ 1, 3, 2.0, 8.0 }, result);
    }
}
```
