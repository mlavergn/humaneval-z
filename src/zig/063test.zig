test "fibfib" {
    try std.testing.expectEqual(1, fibfib(2));
    try std.testing.expectEqual(0, fibfib(1));
    try std.testing.expectEqual(4, fibfib(5));
    try std.testing.expectEqual(24, fibfib(8));
    try std.testing.expectEqual(81, fibfib(10));
    try std.testing.expectEqual(274, fibfib(12));
    try std.testing.expectEqual(927, fibfib(14));
}
