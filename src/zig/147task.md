## task_id

```
Zig/147
```

## prompt

```zig
const std = @import("std");

// You are given a positive integer n. You have to create an integer array a of length n.
// For each i (1 ≤ i ≤ n), the value of a[i] = i * i - i + 1.
// Return the number of triples (a[i], a[j], a[k]) of a where i < j < k,
// and a[i] + a[j] + a[k] is a multiple of 3.
//
// Example :
// Input: n = 5
// Output: 1
// Explanation:
// a = [1, 3, 7, 13, 21]
// The only valid triple is (1, 7, 13).
pub fn getMaxTriples(allocator: std.mem.Allocator, n: i64) !i64 {
```

## declaration

```zig
pub fn getMaxTriples(allocator: std.mem.Allocator, n: i64) !i64 {
```

## example_test

```zig
test "getMaxTriples examples" {
    try std.testing.expectEqual(1, try getMaxTriples(std.testing.allocator, 5));
}
```
