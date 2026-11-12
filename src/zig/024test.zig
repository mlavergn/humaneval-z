test "largestDivisor" {
    try std.testing.expectEqual(1, largestDivisor(3));
    try std.testing.expectEqual(1, largestDivisor(7));
    try std.testing.expectEqual(5, largestDivisor(10));
    try std.testing.expectEqual(50, largestDivisor(100));
    try std.testing.expectEqual(7, largestDivisor(49));
}
