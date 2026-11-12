test "specialfilter" {
    try std.testing.expectEqual(0, specialfilter(&[_]i64{ 5, -2, 1, -5 }));
    try std.testing.expectEqual(1, specialfilter(&[_]i64{ 15, -73, 14, -15 }));
    try std.testing.expectEqual(2, specialfilter(&[_]i64{ 33, -2, -3, 45, 21, 109 }));
    try std.testing.expectEqual(4, specialfilter(&[_]i64{ 43, -12, 93, 125, 121, 109 }));
    try std.testing.expectEqual(3, specialfilter(&[_]i64{ 71, -2, -33, 75, 21, 19 }));
    try std.testing.expectEqual(0, specialfilter(&[_]i64{ 1 }));
    try std.testing.expectEqual(0, specialfilter(&[_]i64{}));
}
