## task_id

```
Zig/48
```

## prompt

```zig
const std = @import("std");

// Checks if given string is a palindrome
// >>> isPalindrome("")
// true
// >>> isPalindrome("aba")
// true
// >>> isPalindrome("aaaaa")
// true
// >>> isPalindrome("zbcd")
// false
pub fn isPalindrome(text: []const u8) bool {
```

## declaration

```zig
pub fn isPalindrome(text: []const u8) bool {
```

## example_test

```zig
test "isPalindrome examples" {
    try std.testing.expect(isPalindrome(""));
    try std.testing.expect(isPalindrome("aba"));
    try std.testing.expect(isPalindrome("aaaaa"));
    try std.testing.expect(!isPalindrome("zbcd"));
}
```
