test "howManyTimes" {
    try std.testing.expectEqual(0, howManyTimes("", "x"));
    try std.testing.expectEqual(4, howManyTimes("xyxyxyx", "x"));
    try std.testing.expectEqual(4, howManyTimes("cacacacac", "cac"));
    try std.testing.expectEqual(1, howManyTimes("john doe", "john"));
}
