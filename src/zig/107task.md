## task_id

```
Zig/107
```

## prompt

```zig
const std = @import("std");

// Given a positive integer n, return a tuple that has the number of even and odd
// integer palindromes that fall within the range(1, n), inclusive.
//
// Example 1:
//
// Input: 3
// Output: (1, 2)
// Explanation:
// Integer palindrome are 1, 2, 3. one of them is even, and two of them are odd.
//
// Example 2:
//
// Input: 12
// Output: (4, 6)
// Explanation:
// Integer palindrome are 1, 2, 3, 4, 5, 6, 7, 8, 9, 11. four of them are even, and 6 of them are odd.
//
// Note:
// 1. 1 <= n <= 10^3
// 2. returned tuple has the number of even and odd integer palindromes respectively.
pub fn evenOddPalindrome(n: i64) [2]i64 {
```

## declaration

```zig
pub fn evenOddPalindrome(n: i64) [2]i64 {
```

## example_test

```zig
test "evenOddPalindrome examples" {
    try std.testing.expectEqual([2]i64{ 4, 6 }, evenOddPalindrome(12));
    try std.testing.expectEqual([2]i64{ 1, 2 }, evenOddPalindrome(3));
}
```
