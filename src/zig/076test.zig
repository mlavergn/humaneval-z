test "isSimplePower" {
    try std.testing.expect(isSimplePower(1, 4));
    try std.testing.expect(isSimplePower(2, 2));
    try std.testing.expect(isSimplePower(8, 2));
    try std.testing.expect(!isSimplePower(3, 2));
    try std.testing.expect(!isSimplePower(3, 1));
    try std.testing.expect(!isSimplePower(5, 3));
    try std.testing.expect(isSimplePower(16, 2));
    try std.testing.expect(!isSimplePower(143214, 16));
    try std.testing.expect(isSimplePower(4, 2));
    try std.testing.expect(isSimplePower(9, 3));
    try std.testing.expect(isSimplePower(16, 4));
    try std.testing.expect(!isSimplePower(24, 2));
    try std.testing.expect(!isSimplePower(128, 4));
    try std.testing.expect(!isSimplePower(12, 6));
    try std.testing.expect(isSimplePower(1, 1));
    try std.testing.expect(isSimplePower(1, 12));
}
