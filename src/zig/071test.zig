test "triangleArea" {
    try std.testing.expectEqual(6.00, triangleArea(3, 4, 5));
    try std.testing.expectEqual(-1, triangleArea(1, 2, 10));
    try std.testing.expectEqual(8.18, triangleArea(4, 8, 5));
    try std.testing.expectEqual(1.73, triangleArea(2, 2, 2));
    try std.testing.expectEqual(-1, triangleArea(1, 2, 3));
    try std.testing.expectEqual(16.25, triangleArea(10, 5, 7));
    try std.testing.expectEqual(-1, triangleArea(2, 6, 3));
    try std.testing.expectEqual(0.43, triangleArea(1, 1, 1));
    try std.testing.expectEqual(-1, triangleArea(2, 2, 10));
}
