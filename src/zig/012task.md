## task_id

```
Zig/12
```

## prompt

```zig
const std = @import("std");

// Out of list of strings, return the Longest one. Return the first one in case of multiple
// strings of the same length. Return null in case the input list is empty.
// >>> longest(&.{})
// null
// >>> longest(&.{ "a", "b", "c" })
// "a"
// >>> longest(&.{ "a", "bb", "ccc" })
// "ccc"
pub fn longest(strings: []const []const u8) ?[]const u8 {
```

## declaration

```zig
pub fn longest(strings: []const []const u8) ?[]const u8 {
```

## example_test

```zig
test "longest examples" {
    try std.testing.expect(longest(&[_][]const u8{}) == null);
    {
        const result = (longest(&[_][]const u8{ "a", "b", "c" })).?;
        try std.testing.expectEqualStrings("a", result);
    }
    {
        const result = (longest(&[_][]const u8{ "a", "bb", "ccc" })).?;
        try std.testing.expectEqualStrings("ccc", result);
    }
}
```
