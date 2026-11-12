test "countNums" {
    try std.testing.expectEqual(0, countNums(&[_]i64{}));
    try std.testing.expectEqual(0, countNums(&[_]i64{ -1, -2, 0 }));
    try std.testing.expectEqual(6, countNums(&[_]i64{ 1, 1, 2, -2, 3, 4, 5 }));
    try std.testing.expectEqual(5, countNums(&[_]i64{ 1, 6, 9, -6, 0, 1, 5 }));
    try std.testing.expectEqual(4, countNums(&[_]i64{ 1, 100, 98, -7, 1, -1 }));
    try std.testing.expectEqual(5, countNums(&[_]i64{ 12, 23, 34, -45, -56, 0 }));
    try std.testing.expectEqual(1, countNums(&[_]i64{ 0, 1 }));
    try std.testing.expectEqual(1, countNums(&[_]i64{1}));
}
