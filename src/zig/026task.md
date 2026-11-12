## task_id

```
Zig/26
```

## prompt

```zig
const std = @import("std");

// From a list of integers, remove all elements that occur more than once.
// Keep order of elements left the same as in the input.
// >>> removeDuplicates(allocator, &.{ 1, 2, 3, 2, 4 })
// { 1, 3, 4 }
pub fn removeDuplicates(allocator: std.mem.Allocator, numbers: []const i64) ![]i64 {
```

## declaration

```zig
pub fn removeDuplicates(allocator: std.mem.Allocator, numbers: []const i64) ![]i64 {
```

## example_test

```zig
test "removeDuplicates examples" {
    {
        const result = try removeDuplicates(std.testing.allocator, &[_]i64{ 1, 2, 3, 2, 4 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 3, 4 }, result);
    }
}
```
