test "exchange" {
    try std.testing.expectEqualStrings("YES", exchange(&[_]i64{ 1, 2, 3, 4 }, &[_]i64{ 1, 2, 3, 4 }));
    try std.testing.expectEqualStrings("NO", exchange(&[_]i64{ 1, 2, 3, 4 }, &[_]i64{ 1, 5, 3, 4 }));
    try std.testing.expectEqualStrings("YES", exchange(&[_]i64{ 1, 2, 3, 4 }, &[_]i64{ 2, 1, 4, 3 }));
    try std.testing.expectEqualStrings("YES", exchange(&[_]i64{ 5, 7, 3 }, &[_]i64{ 2, 6, 4 }));
    try std.testing.expectEqualStrings("NO", exchange(&[_]i64{ 5, 7, 3 }, &[_]i64{ 2, 6, 3 }));
    try std.testing.expectEqualStrings("NO", exchange(&[_]i64{ 3, 2, 6, 1, 8, 9 }, &[_]i64{ 3, 5, 5, 1, 1, 1 }));
    try std.testing.expectEqualStrings("YES", exchange(&[_]i64{ 100, 200 }, &[_]i64{ 200, 200 }));
}
