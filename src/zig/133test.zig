test "sumSquares" {
    try std.testing.expectEqual(14, sumSquares(&[_]f64{ 1, 2, 3 }));
    try std.testing.expectEqual(14, sumSquares(&[_]f64{ 1.0, 2, 3 }));
    try std.testing.expectEqual(84, sumSquares(&[_]f64{ 1, 3, 5, 7 }));
    try std.testing.expectEqual(29, sumSquares(&[_]f64{ 1.4, 4.2, 0 }));
    try std.testing.expectEqual(6, sumSquares(&[_]f64{ -2.4, 1, 1 }));
    try std.testing.expectEqual(10230, sumSquares(&[_]f64{ 100, 1, 15, 2 }));
    try std.testing.expectEqual(200000000, sumSquares(&[_]f64{ 10000, 10000 }));
    try std.testing.expectEqual(75, sumSquares(&[_]f64{ -1.4, 4.6, 6.3 }));
    try std.testing.expectEqual(1086, sumSquares(&[_]f64{ -1.4, 17.9, 18.9, 19.9 }));
    try std.testing.expectEqual(0, sumSquares(&[_]f64{ 0 }));
    try std.testing.expectEqual(1, sumSquares(&[_]f64{ -1 }));
    try std.testing.expectEqual(2, sumSquares(&[_]f64{ -1, 1, 0 }));
}
