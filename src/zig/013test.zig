test "greatestCommonDivisor" {
    try std.testing.expectEqual(1, greatestCommonDivisor(3, 7));
    try std.testing.expectEqual(5, greatestCommonDivisor(10, 15));
    try std.testing.expectEqual(7, greatestCommonDivisor(49, 14));
    try std.testing.expectEqual(12, greatestCommonDivisor(144, 60));
}
