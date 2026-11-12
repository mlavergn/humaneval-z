test "willItFly" {
    try std.testing.expect(willItFly(&[_]i64{ 3, 2, 3 }, 9));
    try std.testing.expect(!willItFly(&[_]i64{ 1, 2 }, 5));
    try std.testing.expect(willItFly(&[_]i64{ 3 }, 5));
    try std.testing.expect(!willItFly(&[_]i64{ 3, 2, 3 }, 1));
    try std.testing.expect(!willItFly(&[_]i64{ 1, 2, 3 }, 6));
    try std.testing.expect(willItFly(&[_]i64{ 5 }, 5));
}
