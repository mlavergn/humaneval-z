## task_id

```
Zig/10
```

## prompt

```zig
const std = @import("std");

// Test if given string is a palindrome.
pub fn isPalindrome(str: []const u8) bool {
    for (0..str.len / 2) |i| {
        if (str[i] != str[str.len - 1 - i]) return false;
    }
    return true;
}

// Find the shortest palindrome that begins with a supplied string.
// Algorithm idea is simple:
// - Find the longest postfix of supplied string that is a palindrome.
// - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
// >>> makePalindrome(allocator, "")
// ""
// >>> makePalindrome(allocator, "cat")
// "catac"
// >>> makePalindrome(allocator, "cata")
// "catac"
pub fn makePalindrome(allocator: std.mem.Allocator, str: []const u8) ![]u8 {
```

## declaration

```zig
pub fn makePalindrome(allocator: std.mem.Allocator, str: []const u8) ![]u8 {
```

## example_test

```zig
test "makePalindrome examples" {
    {
        const result = try makePalindrome(std.testing.allocator, "");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("", result);
    }
    {
        const result = try makePalindrome(std.testing.allocator, "cat");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("catac", result);
    }
    {
        const result = try makePalindrome(std.testing.allocator, "cata");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("catac", result);
    }
}
```
