## task_id

```
Zig/100
```

## prompt

```zig
const std = @import("std");

// Given a positive integer n, you have to make a pile of n levels of stones.
// The first level has n stones.
// The number of stones in the next level is:
// - the next odd number if n is odd.
// - the next even number if n is even.
// Return the number of stones in each level in a list, where element at index
// i represents the number of stones in the level (i+1).
//
// Examples:
// >>> makeAPile(allocator, 3)
// { 3, 5, 7 }
pub fn makeAPile(allocator: std.mem.Allocator, n: i64) ![]i64 {
```

## declaration

```zig
pub fn makeAPile(allocator: std.mem.Allocator, n: i64) ![]i64 {
```

## example_test

```zig
test "makeAPile examples" {
    {
        const result = try makeAPile(std.testing.allocator, 3);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 3, 5, 7 }, result);
    }
}
```
