test "isSorted" {
    try std.testing.expect(isSorted(&[_]i64{ 5 }));
    try std.testing.expect(isSorted(&[_]i64{ 1, 2, 3, 4, 5 }));
    try std.testing.expect(!isSorted(&[_]i64{ 1, 3, 2, 4, 5 }));
    try std.testing.expect(isSorted(&[_]i64{ 1, 2, 3, 4, 5, 6 }));
    try std.testing.expect(isSorted(&[_]i64{ 1, 2, 3, 4, 5, 6, 7 }));
    try std.testing.expect(!isSorted(&[_]i64{ 1, 3, 2, 4, 5, 6, 7 }));
    try std.testing.expect(isSorted(&[_]i64{}));
    try std.testing.expect(isSorted(&[_]i64{ 1 }));
    try std.testing.expect(!isSorted(&[_]i64{ 3, 2, 1 }));
    try std.testing.expect(!isSorted(&[_]i64{ 1, 2, 2, 2, 3, 4 }));
    try std.testing.expect(!isSorted(&[_]i64{ 1, 2, 3, 3, 3, 4 }));
    try std.testing.expect(isSorted(&[_]i64{ 1, 2, 2, 3, 3, 4 }));
    try std.testing.expect(isSorted(&[_]i64{ 1, 2, 3, 4 }));
}
