## task_id

```
Zig/56
```

## prompt

```zig
const std = @import("std");

// brackets is a string of "<" and ">".
// return true if every opening bracket has a corresponding closing bracket.
//
// >>> correctBracketing("<")
// false
// >>> correctBracketing("<>")
// true
// >>> correctBracketing("<<><>>")
// true
// >>> correctBracketing("><<>")
// false
pub fn correctBracketing(brackets: []const u8) bool {
```

## declaration

```zig
pub fn correctBracketing(brackets: []const u8) bool {
```

## example_test

```zig
test "correctBracketing examples" {
    try std.testing.expect(correctBracketing("<>"));
    try std.testing.expect(correctBracketing("<<><>>"));
    try std.testing.expect(!correctBracketing("><<>"));
    try std.testing.expect(!correctBracketing("<"));
}
```
