test "carRaceCollision" {
    try std.testing.expectEqual(4, carRaceCollision(2));
    try std.testing.expectEqual(9, carRaceCollision(3));
    try std.testing.expectEqual(16, carRaceCollision(4));
    try std.testing.expectEqual(64, carRaceCollision(8));
    try std.testing.expectEqual(100, carRaceCollision(10));
}
