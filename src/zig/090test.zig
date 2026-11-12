test "nextSmallest" {
    try std.testing.expectEqual(@as(?i64, 2), try nextSmallest(std.testing.allocator, &[_]i64{ 1, 2, 3, 4, 5 }));
    try std.testing.expectEqual(@as(?i64, 2), try nextSmallest(std.testing.allocator, &[_]i64{ 5, 1, 4, 3, 2 }));
    try std.testing.expectEqual(@as(?i64, null), try nextSmallest(std.testing.allocator, &[_]i64{}));
    try std.testing.expectEqual(@as(?i64, null), try nextSmallest(std.testing.allocator, &[_]i64{ 1, 1 }));
    try std.testing.expectEqual(@as(?i64, 1), try nextSmallest(std.testing.allocator, &[_]i64{ 1, 1, 1, 1, 0 }));
    try std.testing.expectEqual(@as(?i64, null), try nextSmallest(std.testing.allocator, &[_]i64{ 1, 1 }));
    try std.testing.expectEqual(@as(?i64, -35), try nextSmallest(std.testing.allocator, &[_]i64{ -35, 34, 12, -45 }));
}
