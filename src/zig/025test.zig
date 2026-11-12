test "factorize" {
    {
        const result = try factorize(std.testing.allocator, 2);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2 }, result);
    }
    {
        const result = try factorize(std.testing.allocator, 4);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 2 }, result);
    }
    {
        const result = try factorize(std.testing.allocator, 8);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 2, 2 }, result);
    }
    {
        const result = try factorize(std.testing.allocator, 3 * 19);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 3, 19 }, result);
    }
    {
        const result = try factorize(std.testing.allocator, 3 * 19 * 3 * 19);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 3, 3, 19, 19 }, result);
    }
    {
        const result = try factorize(std.testing.allocator, 3 * 19 * 3 * 19 * 3 * 19);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 3, 3, 3, 19, 19, 19 }, result);
    }
    {
        const result = try factorize(std.testing.allocator, 3 * 19 * 19 * 19);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 3, 19, 19, 19 }, result);
    }
    {
        const result = try factorize(std.testing.allocator, 3 * 2 * 3);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 3, 3 }, result);
    }
}
