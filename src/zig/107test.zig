test "evenOddPalindrome" {
    try std.testing.expectEqual([2]i64{ 8, 13 }, evenOddPalindrome(123));
    try std.testing.expectEqual([2]i64{ 4, 6 }, evenOddPalindrome(12));
    try std.testing.expectEqual([2]i64{ 1, 2 }, evenOddPalindrome(3));
    try std.testing.expectEqual([2]i64{ 6, 8 }, evenOddPalindrome(63));
    try std.testing.expectEqual([2]i64{ 5, 6 }, evenOddPalindrome(25));
    try std.testing.expectEqual([2]i64{ 4, 6 }, evenOddPalindrome(19));
    try std.testing.expectEqual([2]i64{ 4, 5 }, evenOddPalindrome(9));
    try std.testing.expectEqual([2]i64{ 0, 1 }, evenOddPalindrome(1));
}
