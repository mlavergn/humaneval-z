test "belowThreshold" {
    try std.testing.expect(belowThreshold(&[_]i64{ 1, 2, 4, 10 }, 100));
    try std.testing.expect(!belowThreshold(&[_]i64{ 1, 20, 4, 10 }, 5));
    try std.testing.expect(belowThreshold(&[_]i64{ 1, 20, 4, 10 }, 21));
    try std.testing.expect(belowThreshold(&[_]i64{ 1, 20, 4, 10 }, 22));
    try std.testing.expect(belowThreshold(&[_]i64{ 1, 8, 4, 10 }, 11));
    try std.testing.expect(!belowThreshold(&[_]i64{ 1, 8, 4, 10 }, 10));
}
