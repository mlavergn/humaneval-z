test "canArrange" {
    try std.testing.expectEqual(3, canArrange(&[_]i64{ 1, 2, 4, 3, 5 }));
    try std.testing.expectEqual(-1, canArrange(&[_]i64{ 1, 2, 4, 5 }));
    try std.testing.expectEqual(2, canArrange(&[_]i64{ 1, 4, 2, 5, 6, 7, 8, 9, 10 }));
    try std.testing.expectEqual(4, canArrange(&[_]i64{ 4, 8, 5, 7, 3 }));
    try std.testing.expectEqual(-1, canArrange(&[_]i64{}));
}
