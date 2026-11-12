test "startsOneEnds" {
    try std.testing.expectEqual(1, startsOneEnds(1));
    try std.testing.expectEqual(18, startsOneEnds(2));
    try std.testing.expectEqual(180, startsOneEnds(3));
    try std.testing.expectEqual(1800, startsOneEnds(4));
    try std.testing.expectEqual(18000, startsOneEnds(5));
}
