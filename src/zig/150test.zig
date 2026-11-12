test "xOrY" {
    try std.testing.expectEqual(34, xOrY(7, 34, 12));
    try std.testing.expectEqual(5, xOrY(15, 8, 5));
    try std.testing.expectEqual(33, xOrY(3, 33, 5212));
    try std.testing.expectEqual(3, xOrY(1259, 3, 52));
    try std.testing.expectEqual(-1, xOrY(7919, -1, 12));
    try std.testing.expectEqual(583, xOrY(3609, 1245, 583));
    try std.testing.expectEqual(129, xOrY(91, 56, 129));
    try std.testing.expectEqual(1234, xOrY(6, 34, 1234));
    try std.testing.expectEqual(0, xOrY(1, 2, 0));
    try std.testing.expectEqual(2, xOrY(2, 2, 0));
}
