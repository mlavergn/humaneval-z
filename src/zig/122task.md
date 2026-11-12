## task_id

```
Zig/122
```

## prompt

```zig
const std = @import("std");

// Given a non-empty array of integers arr and an integer k, return
// the sum of the elements with at most two digits from the first k elements of arr.
//
// Example:
//
// Input: arr = [111,21,3,4000,5,6,7,8,9], k = 4
// Output: 24 # sum of 21 + 3
//
// Constraints:
// 1. 1 <= len(arr) <= 100
// 2. 1 <= k <= len(arr)
pub fn addElements(arr: []const i64, k: i64) i64 {
```

## declaration

```zig
pub fn addElements(arr: []const i64, k: i64) i64 {
```

## example_test

```zig
test "addElements examples" {
    try std.testing.expectEqual(24, addElements(&[_]i64{ 111, 21, 3, 4000, 5, 6, 7, 8, 9 }, 4));
}
```
