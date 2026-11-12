test "sumSquares" {
    try std.testing.expectEqual(6, sumSquares(&[_]i64{ 1, 2, 3 }));
    try std.testing.expectEqual(14, sumSquares(&[_]i64{ 1, 4, 9 }));
    try std.testing.expectEqual(0, sumSquares(&[_]i64{}));
    try std.testing.expectEqual(9, sumSquares(&[_]i64{ 1, 1, 1, 1, 1, 1, 1, 1, 1 }));
    try std.testing.expectEqual(-3, sumSquares(&[_]i64{ -1, -1, -1, -1, -1, -1, -1, -1, -1 }));
    try std.testing.expectEqual(0, sumSquares(&[_]i64{ 0 }));
    try std.testing.expectEqual(-126, sumSquares(&[_]i64{ -1, -5, 2, -1, -5 }));
    try std.testing.expectEqual(3030, sumSquares(&[_]i64{ -56, -99, 1, 0, -2 }));
    try std.testing.expectEqual(0, sumSquares(&[_]i64{ -1, 0, 0, 0, 0, 0, 0, 0, -1 }));
    try std.testing.expectEqual(-14196, sumSquares(&[_]i64{ -16, -9, -2, 36, 36, 26, -20, 25, -40, 20, -4, 12, -26, 35, 37 }));
    try std.testing.expectEqual(-1448, sumSquares(&[_]i64{ -1, -3, 17, -1, -15, 13, -1, 14, -14, -12, -5, 14, -14, 6, 13, 11, 16, 16, 4, 10 }));
}
