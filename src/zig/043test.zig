test "pairsSumToZero" {
    try std.testing.expect(!pairsSumToZero(&[_]i64{ 1, 3, 5, 0 }));
    try std.testing.expect(!pairsSumToZero(&[_]i64{ 1, 3, -2, 1 }));
    try std.testing.expect(!pairsSumToZero(&[_]i64{ 1, 2, 3, 7 }));
    try std.testing.expect(pairsSumToZero(&[_]i64{ 2, 4, -5, 3, 5, 7 }));
    try std.testing.expect(!pairsSumToZero(&[_]i64{ 1 }));
    try std.testing.expect(pairsSumToZero(&[_]i64{ -3, 9, -1, 3, 2, 30 }));
    try std.testing.expect(pairsSumToZero(&[_]i64{ -3, 9, -1, 3, 2, 31 }));
    try std.testing.expect(!pairsSumToZero(&[_]i64{ -3, 9, -1, 4, 2, 30 }));
    try std.testing.expect(!pairsSumToZero(&[_]i64{ -3, 9, -1, 4, 2, 31 }));
}
