test "minsubarraysum" {
    try std.testing.expectEqual(1, minsubarraysum(&[_]i64{ 2, 3, 4, 1, 2, 4 }));
    try std.testing.expectEqual(-6, minsubarraysum(&[_]i64{ -1, -2, -3 }));
    try std.testing.expectEqual(-14, minsubarraysum(&[_]i64{ -1, -2, -3, 2, -10 }));
    try std.testing.expectEqual(-9999999999999999, minsubarraysum(&[_]i64{ -9999999999999999 }));
    try std.testing.expectEqual(0, minsubarraysum(&[_]i64{ 0, 10, 20, 1000000 }));
    try std.testing.expectEqual(-6, minsubarraysum(&[_]i64{ -1, -2, -3, 10, -5 }));
    try std.testing.expectEqual(-6, minsubarraysum(&[_]i64{ 100, -1, -2, -3, 10, -5 }));
    try std.testing.expectEqual(3, minsubarraysum(&[_]i64{ 10, 11, 13, 8, 3, 4 }));
    try std.testing.expectEqual(-33, minsubarraysum(&[_]i64{ 100, -33, 32, -1, 0, -2 }));
    try std.testing.expectEqual(-10, minsubarraysum(&[_]i64{ -10 }));
    try std.testing.expectEqual(7, minsubarraysum(&[_]i64{ 7 }));
    try std.testing.expectEqual(-1, minsubarraysum(&[_]i64{ 1, -1 }));
}
