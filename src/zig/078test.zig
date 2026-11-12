test "hexKey" {
    try std.testing.expectEqual(1, hexKey("AB"));
    try std.testing.expectEqual(2, hexKey("1077E"));
    try std.testing.expectEqual(4, hexKey("ABED1A33"));
    try std.testing.expectEqual(2, hexKey("2020"));
    try std.testing.expectEqual(6, hexKey("123456789ABCDEF0"));
    try std.testing.expectEqual(12, hexKey("112233445566778899AABBCCDDEEFF00"));
    try std.testing.expectEqual(0, hexKey(""));
}
