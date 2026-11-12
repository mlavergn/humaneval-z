test "cycpatternCheck" {
    try std.testing.expect(!cycpatternCheck("xyzw", "xyw"));
    try std.testing.expect(cycpatternCheck("yello", "ell"));
    try std.testing.expect(!cycpatternCheck("whattup", "ptut"));
    try std.testing.expect(cycpatternCheck("efef", "fee"));
    try std.testing.expect(!cycpatternCheck("abab", "aabb"));
    try std.testing.expect(cycpatternCheck("winemtt", "tinem"));
}
