test "multiply" {
    try std.testing.expectEqual(16, multiply(148, 412));
    try std.testing.expectEqual(72, multiply(19, 28));
    try std.testing.expectEqual(0, multiply(2020, 1851));
    try std.testing.expectEqual(20, multiply(14, -15));
    try std.testing.expectEqual(42, multiply(76, 67));
    try std.testing.expectEqual(49, multiply(17, 27));
    try std.testing.expectEqual(0, multiply(0, 1));
    try std.testing.expectEqual(0, multiply(0, 0));
}
