test "modp" {
    try std.testing.expectEqual(3, modp(3, 5));
    try std.testing.expectEqual(2, modp(1101, 101));
    try std.testing.expectEqual(1, modp(0, 101));
    try std.testing.expectEqual(8, modp(3, 11));
    try std.testing.expectEqual(1, modp(100, 101));
    try std.testing.expectEqual(4, modp(30, 5));
    try std.testing.expectEqual(3, modp(31, 5));
}
