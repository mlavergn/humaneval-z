test "monotonic" {
    try std.testing.expect(monotonic(&[_]i64{ 1, 2, 4, 10 }));
    try std.testing.expect(monotonic(&[_]i64{ 1, 2, 4, 20 }));
    try std.testing.expect(!monotonic(&[_]i64{ 1, 20, 4, 10 }));
    try std.testing.expect(monotonic(&[_]i64{ 4, 1, 0, -10 }));
    try std.testing.expect(monotonic(&[_]i64{ 4, 1, 1, 0 }));
    try std.testing.expect(!monotonic(&[_]i64{ 1, 2, 3, 2, 5, 60 }));
    try std.testing.expect(monotonic(&[_]i64{ 1, 2, 3, 4, 5, 60 }));
    try std.testing.expect(monotonic(&[_]i64{ 9, 9, 9, 9 }));
}
