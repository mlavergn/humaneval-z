test "sortArray" {
    {
        const result = try sortArray(std.testing.allocator, &[_]i64{ 1, 5, 2, 3, 4 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 2, 4, 3, 5 }, result);
    }
    {
        const result = try sortArray(std.testing.allocator, &[_]i64{ -2, -3, -4, -5, -6 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ -4, -2, -6, -5, -3 }, result);
    }
    {
        const result = try sortArray(std.testing.allocator, &[_]i64{ 1, 0, 2, 3, 4 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 0, 1, 2, 4, 3 }, result);
    }
    {
        const result = try sortArray(std.testing.allocator, &[_]i64{});
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{}, result);
    }
    {
        const result = try sortArray(std.testing.allocator, &[_]i64{ 2, 5, 77, 4, 5, 3, 5, 7, 2, 3, 4 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 2, 4, 4, 3, 3, 5, 5, 5, 7, 77 }, result);
    }
    {
        const result = try sortArray(std.testing.allocator, &[_]i64{ 3, 6, 44, 12, 32, 5 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 32, 3, 5, 6, 12, 44 }, result);
    }
    {
        const result = try sortArray(std.testing.allocator, &[_]i64{ 2, 4, 8, 16, 32 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 4, 8, 16, 32 }, result);
    }
    {
        const result = try sortArray(std.testing.allocator, &[_]i64{ 2, 4, 8, 16, 32 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 4, 8, 16, 32 }, result);
    }
}
