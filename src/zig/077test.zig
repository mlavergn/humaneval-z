test "iscube" {
    try std.testing.expect(iscube(1));
    try std.testing.expect(!iscube(2));
    try std.testing.expect(iscube(-1));
    try std.testing.expect(iscube(64));
    try std.testing.expect(!iscube(180));
    try std.testing.expect(iscube(1000));
    try std.testing.expect(iscube(0));
    try std.testing.expect(!iscube(1729));
}
