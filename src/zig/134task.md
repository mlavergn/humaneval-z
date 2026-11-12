## task_id

```
Zig/134
```

## prompt

```zig
const std = @import("std");

// Create a function that returns true if the last character
// of a given string is an alphabetical character and is not
// a part of a word, and false otherwise.
// Note: "word" is a group of characters separated by space.
//
// Examples:
// checkIfLastCharIsALetter("apple pie") ➞ false
// checkIfLastCharIsALetter("apple pi e") ➞ true
// checkIfLastCharIsALetter("apple pi e ") ➞ false
// checkIfLastCharIsALetter("") ➞ false
pub fn checkIfLastCharIsALetter(txt: []const u8) bool {
```

## declaration

```zig
pub fn checkIfLastCharIsALetter(txt: []const u8) bool {
```

## example_test

```zig
test "checkIfLastCharIsALetter examples" {
    try std.testing.expect(checkIfLastCharIsALetter("apple pi e"));
    try std.testing.expect(!checkIfLastCharIsALetter(""));
    try std.testing.expect(!checkIfLastCharIsALetter("apple pie"));
    try std.testing.expect(!checkIfLastCharIsALetter("apple pi e "));
}
```
