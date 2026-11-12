test "maxFill" {
    try std.testing.expectEqual(6, maxFill(&[_][]const i64{ &[_]i64{ 0, 0, 1, 0 }, &[_]i64{ 0, 1, 0, 0 }, &[_]i64{ 1, 1, 1, 1 } }, 1));
    try std.testing.expectEqual(5, maxFill(&[_][]const i64{ &[_]i64{ 0, 0, 1, 1 }, &[_]i64{ 0, 0, 0, 0 }, &[_]i64{ 1, 1, 1, 1 }, &[_]i64{ 0, 1, 1, 1 } }, 2));
    try std.testing.expectEqual(0, maxFill(&[_][]const i64{ &[_]i64{ 0, 0, 0 }, &[_]i64{ 0, 0, 0 } }, 5));
    try std.testing.expectEqual(4, maxFill(&[_][]const i64{ &[_]i64{ 1, 1, 1, 1 }, &[_]i64{ 1, 1, 1, 1 } }, 2));
    try std.testing.expectEqual(2, maxFill(&[_][]const i64{ &[_]i64{ 1, 1, 1, 1 }, &[_]i64{ 1, 1, 1, 1 } }, 9));
}
