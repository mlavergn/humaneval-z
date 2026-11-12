test "largestPrimeFactor" {
    try std.testing.expectEqual(5, largestPrimeFactor(15));
    try std.testing.expectEqual(3, largestPrimeFactor(27));
    try std.testing.expectEqual(7, largestPrimeFactor(63));
    try std.testing.expectEqual(11, largestPrimeFactor(330));
    try std.testing.expectEqual(29, largestPrimeFactor(13195));
}
