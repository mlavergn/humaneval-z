test "skjkasdkd" {
    try std.testing.expectEqual(10, skjkasdkd(&[_]i64{ 0, 3, 2, 1, 3, 5, 7, 4, 5, 5, 5, 2, 181, 32, 4, 32, 3, 2, 32, 324, 4, 3 }));
    try std.testing.expectEqual(25, skjkasdkd(&[_]i64{ 1, 0, 1, 8, 2, 4597, 2, 1, 3, 40, 1, 2, 1, 2, 4, 2, 5, 1 }));
    try std.testing.expectEqual(13, skjkasdkd(&[_]i64{ 1, 3, 1, 32, 5107, 34, 83278, 109, 163, 23, 2323, 32, 30, 1, 9, 3 }));
    try std.testing.expectEqual(11, skjkasdkd(&[_]i64{ 0, 724, 32, 71, 99, 32, 6, 0, 5, 91, 83, 0, 5, 6 }));
    try std.testing.expectEqual(3, skjkasdkd(&[_]i64{ 0, 81, 12, 3, 1, 21 }));
    try std.testing.expectEqual(7, skjkasdkd(&[_]i64{ 0, 8, 1, 2, 1, 7 }));
    try std.testing.expectEqual(19, skjkasdkd(&[_]i64{ 8191 }));
    try std.testing.expectEqual(19, skjkasdkd(&[_]i64{ 8191, 123456, 127, 7 }));
    try std.testing.expectEqual(10, skjkasdkd(&[_]i64{ 127, 97, 8192 }));
}
