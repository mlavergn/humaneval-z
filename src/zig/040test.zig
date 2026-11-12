test "triplesSumToZero" {
    try std.testing.expect(!triplesSumToZero(&[_]i64{ 1, 3, 5, 0 }));
    try std.testing.expect(!triplesSumToZero(&[_]i64{ 1, 3, 5, -1 }));
    try std.testing.expect(triplesSumToZero(&[_]i64{ 1, 3, -2, 1 }));
    try std.testing.expect(!triplesSumToZero(&[_]i64{ 1, 2, 3, 7 }));
    try std.testing.expect(!triplesSumToZero(&[_]i64{ 1, 2, 5, 7 }));
    try std.testing.expect(triplesSumToZero(&[_]i64{ 2, 4, -5, 3, 9, 7 }));
    try std.testing.expect(!triplesSumToZero(&[_]i64{ 1 }));
    try std.testing.expect(!triplesSumToZero(&[_]i64{ 1, 3, 5, -100 }));
    try std.testing.expect(!triplesSumToZero(&[_]i64{ 100, 3, 5, -100 }));
}
