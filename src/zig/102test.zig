test "chooseNum" {
    try std.testing.expectEqual(14, chooseNum(12, 15));
    try std.testing.expectEqual(-1, chooseNum(13, 12));
    try std.testing.expectEqual(12354, chooseNum(33, 12354));
    try std.testing.expectEqual(-1, chooseNum(5234, 5233));
    try std.testing.expectEqual(28, chooseNum(6, 29));
    try std.testing.expectEqual(-1, chooseNum(27, 10));
    try std.testing.expectEqual(-1, chooseNum(7, 7));
    try std.testing.expectEqual(546, chooseNum(546, 546));
}
