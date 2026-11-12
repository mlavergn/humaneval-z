test "intersection" {
    try std.testing.expectEqualStrings("NO", intersection([2]i64{ 1, 2 }, [2]i64{ 2, 3 }));
    try std.testing.expectEqualStrings("NO", intersection([2]i64{ -1, 1 }, [2]i64{ 0, 4 }));
    try std.testing.expectEqualStrings("YES", intersection([2]i64{ -3, -1 }, [2]i64{ -5, 5 }));
    try std.testing.expectEqualStrings("YES", intersection([2]i64{ -2, 2 }, [2]i64{ -4, 0 }));
    try std.testing.expectEqualStrings("NO", intersection([2]i64{ -11, 2 }, [2]i64{ -1, -1 }));
    try std.testing.expectEqualStrings("NO", intersection([2]i64{ 1, 2 }, [2]i64{ 3, 5 }));
    try std.testing.expectEqualStrings("NO", intersection([2]i64{ 1, 2 }, [2]i64{ 1, 2 }));
    try std.testing.expectEqualStrings("NO", intersection([2]i64{ -2, -2 }, [2]i64{ -3, -2 }));
}
