test "smallestChange" {
    try std.testing.expectEqual(4, smallestChange(&[_]i64{ 1, 2, 3, 5, 4, 7, 9, 6 }));
    try std.testing.expectEqual(1, smallestChange(&[_]i64{ 1, 2, 3, 4, 3, 2, 2 }));
    try std.testing.expectEqual(1, smallestChange(&[_]i64{ 1, 4, 2 }));
    try std.testing.expectEqual(1, smallestChange(&[_]i64{ 1, 4, 4, 2 }));
    try std.testing.expectEqual(0, smallestChange(&[_]i64{ 1, 2, 3, 2, 1 }));
    try std.testing.expectEqual(0, smallestChange(&[_]i64{ 3, 1, 1, 3 }));
    try std.testing.expectEqual(0, smallestChange(&[_]i64{ 1 }));
    try std.testing.expectEqual(1, smallestChange(&[_]i64{ 0, 1 }));
}
