test "evenOddCount" {
    try std.testing.expectEqual([2]i64{ 0, 1 }, evenOddCount(7));
    try std.testing.expectEqual([2]i64{ 1, 1 }, evenOddCount(-78));
    try std.testing.expectEqual([2]i64{ 2, 2 }, evenOddCount(3452));
    try std.testing.expectEqual([2]i64{ 3, 3 }, evenOddCount(346211));
    try std.testing.expectEqual([2]i64{ 3, 3 }, evenOddCount(-345821));
    try std.testing.expectEqual([2]i64{ 1, 0 }, evenOddCount(-2));
    try std.testing.expectEqual([2]i64{ 2, 3 }, evenOddCount(-45347));
    try std.testing.expectEqual([2]i64{ 1, 0 }, evenOddCount(0));
}
