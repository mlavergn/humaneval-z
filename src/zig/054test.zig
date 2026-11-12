test "sameChars" {
    try std.testing.expect(sameChars("eabcdzzzz", "dddzzzzzzzddeddabc"));
    try std.testing.expect(sameChars("abcd", "dddddddabc"));
    try std.testing.expect(sameChars("dddddddabc", "abcd"));
    try std.testing.expect(!sameChars("eabcd", "dddddddabc"));
    try std.testing.expect(!sameChars("abcd", "dddddddabcf"));
    try std.testing.expect(!sameChars("eabcdzzzz", "dddzzzzzzzddddabc"));
    try std.testing.expect(!sameChars("aabb", "aaccc"));
}
