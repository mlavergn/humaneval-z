test "vowelsCount" {
    try std.testing.expectEqual(2, vowelsCount("abcde"));
    try std.testing.expectEqual(3, vowelsCount("Alone"));
    try std.testing.expectEqual(2, vowelsCount("key"));
    try std.testing.expectEqual(1, vowelsCount("bye"));
    try std.testing.expectEqual(2, vowelsCount("keY"));
    try std.testing.expectEqual(1, vowelsCount("bYe"));
    try std.testing.expectEqual(3, vowelsCount("ACEDY"));
}
