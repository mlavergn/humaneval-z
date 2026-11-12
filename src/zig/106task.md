## task_id

```
Zig/106
```

## prompt

```zig
const std = @import("std");

// Implement the Function F that takes n as a parameter,
// and returns a list of size n, such that the value of the element at index i is the factorial of i if i is even
// or the sum of numbers from 1 to i otherwise.
// i starts from 1.
// the factorial of i is the multiplication of the numbers from 1 to i (1 * 2 * ... * i).
// Example:
// f(allocator, 5) == [1, 2, 6, 24, 15]
pub fn f(allocator: std.mem.Allocator, n: i64) ![]i64 {
```

## declaration

```zig
pub fn f(allocator: std.mem.Allocator, n: i64) ![]i64 {
```

## example_test

```zig
test "f examples" {
    {
        const result = try f(std.testing.allocator, 5);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 2, 6, 24, 15 }, result);
    }
}
```
