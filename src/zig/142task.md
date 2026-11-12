## task_id

```
Zig/142
```

## prompt

```zig
const std = @import("std");

// This function will take a list of integers. For all entries in the list, the function shall square the integer entry if its index is a
// multiple of 3 and will cube the integer entry if its index is a multiple of 4 and not a multiple of 3. The function will not
// change the entries in the list whose indexes are not a multiple of 3 or 4. The function shall then return the sum of all entries.
//
// Examples:
// For lst = [1,2,3] the output should be 6
// For lst = []  the output should be 0
// For lst = [-1,-5,2,-1,-5]  the output should be -126
pub fn sumSquares(lst: []const i64) i64 {
```

## declaration

```zig
pub fn sumSquares(lst: []const i64) i64 {
```

## example_test

```zig
test "sumSquares examples" {
    try std.testing.expectEqual(6, sumSquares(&[_]i64{ 1, 2, 3 }));
    try std.testing.expectEqual(0, sumSquares(&[_]i64{}));
    try std.testing.expectEqual(-126, sumSquares(&[_]i64{ -1, -5, 2, -1, -5 }));
}
```
