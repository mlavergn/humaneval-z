test "isHappy" {
    try std.testing.expect(!isHappy("a"));
    try std.testing.expect(!isHappy("aa"));
    try std.testing.expect(isHappy("abcd"));
    try std.testing.expect(!isHappy("aabb"));
    try std.testing.expect(isHappy("adb"));
    try std.testing.expect(!isHappy("xyy"));
    try std.testing.expect(isHappy("iopaxpoi"));
    try std.testing.expect(!isHappy("iopaxioi"));
}
