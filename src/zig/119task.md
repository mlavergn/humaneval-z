## task_id

```
Zig/119
```

## prompt

```zig
const std = @import("std");

// You are given a list of two strings, both strings consist of open
// parentheses '(' or close parentheses ')' only.
// Your job is to check if it is possible to concatenate the two strings in
// some order, that the resulting string will be good.
// A string S is considered to be good if and only if all parentheses in S
// are balanced. For example: the string '(())()' is good, while the string
// '())' is not.
// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
//
// Examples:
// matchParens(['()(', ')']) == 'Yes'
// matchParens([')', ')']) == 'No'
pub fn matchParens(lst: []const []const u8) []const u8 {
```

## declaration

```zig
pub fn matchParens(lst: []const []const u8) []const u8 {
```

## example_test

```zig
test "matchParens examples" {
    try std.testing.expectEqualStrings("Yes", matchParens(&[_][]const u8{ "()(", ")" }));
    try std.testing.expectEqualStrings("No", matchParens(&[_][]const u8{ ")", ")" }));
}
```
