test "sumProduct" {
    try std.testing.expectEqual([2]i64{ 0, 1 }, sumProduct(&[_]i64{}));
    try std.testing.expectEqual([2]i64{ 3, 1 }, sumProduct(&[_]i64{ 1, 1, 1 }));
    try std.testing.expectEqual([2]i64{ 100, 0 }, sumProduct(&[_]i64{ 100, 0 }));
    try std.testing.expectEqual([2]i64{ 3 + 5 + 7, 3 * 5 * 7 }, sumProduct(&[_]i64{ 3, 5, 7 }));
    try std.testing.expectEqual([2]i64{ 10, 10 }, sumProduct(&[_]i64{ 10 }));
}
