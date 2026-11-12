test "intersperse" {
    {
        const result = try intersperse(std.testing.allocator, &[_]i64{}, 7);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{}, result);
    }
    {
        const result = try intersperse(std.testing.allocator, &[_]i64{ 5, 6, 3, 2 }, 8);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 5, 8, 6, 8, 3, 8, 2 }, result);
    }
    {
        const result = try intersperse(std.testing.allocator, &[_]i64{ 2, 2, 2 }, 2);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 2, 2, 2, 2 }, result);
    }
}
