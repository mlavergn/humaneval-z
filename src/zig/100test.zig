test "makeAPile" {
    {
        const result = try makeAPile(std.testing.allocator, 3);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 3, 5, 7 }, result);
    }
    {
        const result = try makeAPile(std.testing.allocator, 4);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 4, 6, 8, 10 }, result);
    }
    {
        const result = try makeAPile(std.testing.allocator, 5);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 5, 7, 9, 11, 13 }, result);
    }
    {
        const result = try makeAPile(std.testing.allocator, 6);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 6, 8, 10, 12, 14, 16 }, result);
    }
    {
        const result = try makeAPile(std.testing.allocator, 8);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 8, 10, 12, 14, 16, 18, 20, 22 }, result);
    }
}
