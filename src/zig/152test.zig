test "compare" {
    {
        const result = try compare(std.testing.allocator, &[_]i64{ 1, 2, 3, 4, 5, 1 }, &[_]i64{ 1, 2, 3, 4, 2, -2 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 0, 0, 0, 0, 3, 3 }, result);
    }
    {
        const result = try compare(std.testing.allocator, &[_]i64{ 0, 5, 0, 0, 0, 4 }, &[_]i64{ 4, 1, 1, 0, 0, -2 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 4, 4, 1, 0, 0, 6 }, result);
    }
    {
        const result = try compare(std.testing.allocator, &[_]i64{ 1, 2, 3, 4, 5, 1 }, &[_]i64{ 1, 2, 3, 4, 2, -2 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 0, 0, 0, 0, 3, 3 }, result);
    }
    {
        const result = try compare(std.testing.allocator, &[_]i64{ 0, 0, 0, 0, 0, 0 }, &[_]i64{ 0, 0, 0, 0, 0, 0 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 0, 0, 0, 0, 0, 0 }, result);
    }
    {
        const result = try compare(std.testing.allocator, &[_]i64{ 1, 2, 3 }, &[_]i64{ -1, -2, -3 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 4, 6 }, result);
    }
    {
        const result = try compare(std.testing.allocator, &[_]i64{ 1, 2, 3, 5 }, &[_]i64{ -1, 2, 3, 4 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 0, 0, 1 }, result);
    }
}
