## task_id

```
Zig/95
```

## prompt

```zig
const std = @import("std");

// Given a dictionary, return true if all keys are strings in lower
// case or all keys are strings in upper case, else return false.
// The function should return false is the given dictionary is empty.
// Examples:
// checkDictCase({"a":"apple", "b":"banana"}) should return true.
// checkDictCase({"a":"apple", "A":"banana", "B":"banana"}) should return false.
// checkDictCase({"a":"apple", 8:"banana", "a":"apple"}) should return false.
// checkDictCase({"Name":"John", "Age":"36", "City":"Houston"}) should return false.
// checkDictCase({"STATE":"NC", "ZIP":"12345" }) should return true.
// The dictionary is given as a slice of { key, value } pairs.
pub fn checkDictCase(dict: []const [2][]const u8) bool {
```

## declaration

```zig
pub fn checkDictCase(dict: []const [2][]const u8) bool {
```

## example_test

```zig
test "checkDictCase examples" {
    try std.testing.expect(checkDictCase(&.{ .{ "p", "pineapple" }, .{ "b", "banana" } }));
    try std.testing.expect(!checkDictCase(&.{ .{ "p", "pineapple" }, .{ "A", "banana" }, .{ "B", "banana" } }));
    try std.testing.expect(!checkDictCase(&.{ .{ "p", "pineapple" }, .{ "5", "banana" }, .{ "a", "apple" } }));
    try std.testing.expect(!checkDictCase(&.{ .{ "Name", "John" }, .{ "Age", "36" }, .{ "City", "Houston" } }));
    try std.testing.expect(checkDictCase(&.{ .{ "STATE", "NC" }, .{ "ZIP", "12345" } }));
}
```
