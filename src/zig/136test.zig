test "largestSmallestIntegers" {
    try std.testing.expectEqual([2]?i64{ null, 1 }, largestSmallestIntegers(&[_]i64{ 2, 4, 1, 3, 5, 7 }));
    try std.testing.expectEqual([2]?i64{ null, 1 }, largestSmallestIntegers(&[_]i64{ 2, 4, 1, 3, 5, 7, 0 }));
    try std.testing.expectEqual([2]?i64{ -2, 1 }, largestSmallestIntegers(&[_]i64{ 1, 3, 2, 4, 5, 6, -2 }));
    try std.testing.expectEqual([2]?i64{ -7, 2 }, largestSmallestIntegers(&[_]i64{ 4, 5, 3, 6, 2, 7, -7 }));
    try std.testing.expectEqual([2]?i64{ -9, 2 }, largestSmallestIntegers(&[_]i64{ 7, 3, 8, 4, 9, 2, 5, -9 }));
    try std.testing.expectEqual([2]?i64{ null, null }, largestSmallestIntegers(&[_]i64{}));
    try std.testing.expectEqual([2]?i64{ null, null }, largestSmallestIntegers(&[_]i64{ 0 }));
    try std.testing.expectEqual([2]?i64{ -1, null }, largestSmallestIntegers(&[_]i64{ -1, -3, -5, -6 }));
    try std.testing.expectEqual([2]?i64{ -1, null }, largestSmallestIntegers(&[_]i64{ -1, -3, -5, -6, 0 }));
    try std.testing.expectEqual([2]?i64{ -3, 1 }, largestSmallestIntegers(&[_]i64{ -6, -4, -4, -3, 1 }));
    try std.testing.expectEqual([2]?i64{ -3, 1 }, largestSmallestIntegers(&[_]i64{ -6, -4, -4, -3, -100, 1 }));
}
