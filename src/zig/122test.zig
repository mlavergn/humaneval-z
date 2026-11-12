test "addElements" {
    try std.testing.expectEqual(-4, addElements(&[_]i64{ 1, -2, -3, 41, 57, 76, 87, 88, 99 }, 3));
    try std.testing.expectEqual(0, addElements(&[_]i64{ 111, 121, 3, 4000, 5, 6 }, 2));
    try std.testing.expectEqual(125, addElements(&[_]i64{ 11, 21, 3, 90, 5, 6, 7, 8, 9 }, 4));
    try std.testing.expectEqual(24, addElements(&[_]i64{ 111, 21, 3, 4000, 5, 6, 7, 8, 9 }, 4));
    try std.testing.expectEqual(1, addElements(&[_]i64{ 1 }, 1));
}
