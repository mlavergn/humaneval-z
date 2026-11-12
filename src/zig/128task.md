## task_id

```
Zig/128
```

## prompt

```zig
const std = @import("std");

// You are given an array arr of integers and you need to return
// sum of magnitudes of integers multiplied by product of all signs
// of each number in the array, represented by 1, -1 or 0.
// Note: return null for empty arr.
//
// Example:
// >>> prodSigns(&.{ 1, 2, 2, -4 }) == -9
// >>> prodSigns(&.{ 0, 1 }) == 0
// >>> prodSigns([]) == null
pub fn prodSigns(arr: []const i64) ?i64 {
```

## declaration

```zig
pub fn prodSigns(arr: []const i64) ?i64 {
```

## example_test

```zig
test "prodSigns examples" {
    {
        const result = (prodSigns(&[_]i64{ 1, 2, 2, -4 })).?;
        try std.testing.expectEqual(-9, result);
    }
    {
        const result = (prodSigns(&[_]i64{ 0, 1 })).?;
        try std.testing.expectEqual(0, result);
    }
    try std.testing.expect(prodSigns(&[_]i64{}) == null);
}
```
