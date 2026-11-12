## task_id

```
Zig/64
```

## prompt

```zig
const std = @import("std");

// Write a function vowelsCount which takes a string representing
// a word as input and returns the number of vowels in the string.
// Vowels in this case are 'a', 'e', 'i', 'o', 'u'. Here, 'y' is also a
// vowel, but only when it is at the end of the given word.
//
// Example:
// >>> vowelsCount("abcde")
// 2
// >>> vowelsCount("ACEDY")
// 3
pub fn vowelsCount(s: []const u8) i64 {
```

## declaration

```zig
pub fn vowelsCount(s: []const u8) i64 {
```

## example_test

```zig
test "vowelsCount examples" {
    try std.testing.expectEqual(2, vowelsCount("abcde"));
    try std.testing.expectEqual(3, vowelsCount("ACEDY"));
}
```
