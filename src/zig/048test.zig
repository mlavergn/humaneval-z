test "isPalindrome" {
    try std.testing.expect(isPalindrome(""));
    try std.testing.expect(isPalindrome("aba"));
    try std.testing.expect(isPalindrome("aaaaa"));
    try std.testing.expect(!isPalindrome("zbcd"));
    try std.testing.expect(isPalindrome("xywyx"));
    try std.testing.expect(!isPalindrome("xywyz"));
    try std.testing.expect(!isPalindrome("xywzx"));
}
