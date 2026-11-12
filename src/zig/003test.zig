test "belowZero" {
    try std.testing.expect(!belowZero(&[_]i64{}));
    try std.testing.expect(!belowZero(&[_]i64{ 1, 2, -3, 1, 2, -3 }));
    try std.testing.expect(belowZero(&[_]i64{ 1, 2, -4, 5, 6 }));
    try std.testing.expect(!belowZero(&[_]i64{ 1, -1, 2, -2, 5, -5, 4, -4 }));
    try std.testing.expect(belowZero(&[_]i64{ 1, -1, 2, -2, 5, -5, 4, -5 }));
    try std.testing.expect(belowZero(&[_]i64{ 1, -2, 2, -2, 5, -5, 4, -4 }));
}
