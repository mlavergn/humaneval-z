test "eat" {
    try std.testing.expectEqual([2]i64{ 11, 4 }, eat(5, 6, 10));
    try std.testing.expectEqual([2]i64{ 12, 1 }, eat(4, 8, 9));
    try std.testing.expectEqual([2]i64{ 11, 0 }, eat(1, 10, 10));
    try std.testing.expectEqual([2]i64{ 7, 0 }, eat(2, 11, 5));
    try std.testing.expectEqual([2]i64{ 9, 2 }, eat(4, 5, 7));
    try std.testing.expectEqual([2]i64{ 5, 0 }, eat(4, 5, 1));
}
