test "solution" {
    try std.testing.expectEqual(12, solution(&[_]i64{ 5, 8, 7, 1 }));
    try std.testing.expectEqual(9, solution(&[_]i64{ 3, 3, 3, 3, 3 }));
    try std.testing.expectEqual(0, solution(&[_]i64{ 30, 13, 24, 321 }));
    try std.testing.expectEqual(5, solution(&[_]i64{ 5, 9 }));
    try std.testing.expectEqual(0, solution(&[_]i64{ 2, 4, 8 }));
    try std.testing.expectEqual(23, solution(&[_]i64{ 30, 13, 23, 32 }));
    try std.testing.expectEqual(3, solution(&[_]i64{ 3, 13, 2, 9 }));
}
