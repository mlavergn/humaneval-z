test "closestInteger" {
    try std.testing.expectEqual(10, closestInteger("10"));
    try std.testing.expectEqual(15, closestInteger("14.5"));
    try std.testing.expectEqual(-16, closestInteger("-15.5"));
    try std.testing.expectEqual(15, closestInteger("15.3"));
    try std.testing.expectEqual(0, closestInteger("0"));
}
