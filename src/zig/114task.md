## task_id

```
Zig/114
```

## prompt

```zig
const std = @import("std");

// Given an array of integers nums, find the minimum sum of any non-empty sub-array
// of nums.
// Example
// minsubarraysum([2, 3, 4, 1, 2, 4]) == 1
// minsubarraysum([-1, -2, -3]) == -6
pub fn minsubarraysum(nums: []const i64) i64 {
```

## declaration

```zig
pub fn minsubarraysum(nums: []const i64) i64 {
```

## example_test

```zig
test "minsubarraysum examples" {
    try std.testing.expectEqual(1, minsubarraysum(&[_]i64{ 2, 3, 4, 1, 2, 4 }));
    try std.testing.expectEqual(-6, minsubarraysum(&[_]i64{ -1, -2, -3 }));
}
```
