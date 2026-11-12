test "f" {
    {
        const result = try f(std.testing.allocator, 5);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 2, 6, 24, 15 }, result);
    }
    {
        const result = try f(std.testing.allocator, 7);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 2, 6, 24, 15, 720, 28 }, result);
    }
    {
        const result = try f(std.testing.allocator, 1);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1 }, result);
    }
    {
        const result = try f(std.testing.allocator, 3);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 2, 6 }, result);
    }
}
