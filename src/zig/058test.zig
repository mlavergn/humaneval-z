test "common" {
    {
        const result = try common(std.testing.allocator, &[_]i64{ 1, 4, 3, 34, 653, 2, 5 }, &[_]i64{ 5, 7, 1, 5, 9, 653, 121 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 5, 653 }, result);
    }
    {
        const result = try common(std.testing.allocator, &[_]i64{ 5, 3, 2, 8 }, &[_]i64{ 3, 2 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 3 }, result);
    }
    {
        const result = try common(std.testing.allocator, &[_]i64{ 4, 3, 2, 8 }, &[_]i64{ 3, 2, 4 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 3, 4 }, result);
    }
    {
        const result = try common(std.testing.allocator, &[_]i64{ 4, 3, 2, 8 }, &[_]i64{});
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{}, result);
    }
}
