test "rightAngleTriangle" {
    try std.testing.expect(rightAngleTriangle(3, 4, 5));
    try std.testing.expect(!rightAngleTriangle(1, 2, 3));
    try std.testing.expect(rightAngleTriangle(10, 6, 8));
    try std.testing.expect(!rightAngleTriangle(2, 2, 2));
    try std.testing.expect(rightAngleTriangle(7, 24, 25));
    try std.testing.expect(!rightAngleTriangle(10, 5, 7));
    try std.testing.expect(rightAngleTriangle(5, 12, 13));
    try std.testing.expect(rightAngleTriangle(15, 8, 17));
    try std.testing.expect(rightAngleTriangle(48, 55, 73));
    try std.testing.expect(!rightAngleTriangle(1, 1, 1));
    try std.testing.expect(!rightAngleTriangle(2, 2, 10));
}
