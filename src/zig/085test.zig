test "add" {
    try std.testing.expectEqual(88, add(&[_]i64{ 4, 88 }));
    try std.testing.expectEqual(122, add(&[_]i64{ 4, 5, 6, 7, 2, 122 }));
    try std.testing.expectEqual(0, add(&[_]i64{ 4, 0, 6, 7 }));
    try std.testing.expectEqual(12, add(&[_]i64{ 4, 4, 6, 8 }));
}
