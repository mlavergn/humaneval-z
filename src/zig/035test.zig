test "maxElement" {
    try std.testing.expectEqual(3, maxElement(&[_]i64{ 1, 2, 3 }));
    try std.testing.expectEqual(124, maxElement(&[_]i64{ 5, 3, -5, 2, -3, 3, 9, 0, 124, 1, -10 }));
}
