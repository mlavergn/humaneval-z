test "triangleArea" {
    try std.testing.expectEqual(7.5, triangleArea(5, 3));
    try std.testing.expectEqual(2.0, triangleArea(2, 2));
    try std.testing.expectEqual(40.0, triangleArea(10, 8));
}
