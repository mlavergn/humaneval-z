test "median" {
    try std.testing.expectEqual(3.0, try median(std.testing.allocator, &[_]i64{ 3, 1, 2, 4, 5 }));
    try std.testing.expectEqual(8.0, try median(std.testing.allocator, &[_]i64{ -10, 4, 6, 1000, 10, 20 }));
    try std.testing.expectEqual(5.0, try median(std.testing.allocator, &[_]i64{ 5 }));
    try std.testing.expectEqual(5.5, try median(std.testing.allocator, &[_]i64{ 6, 5 }));
    try std.testing.expectEqual(7.0, try median(std.testing.allocator, &[_]i64{ 8, 1, 3, 9, 9, 2, 7 }));
}
