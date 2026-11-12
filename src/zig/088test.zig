test "sortArray" {
    {
        const result = try sortArray(std.testing.allocator, &[_]i64{});
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{}, result);
    }
    {
        const result = try sortArray(std.testing.allocator, &[_]i64{ 5 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 5 }, result);
    }
    {
        const result = try sortArray(std.testing.allocator, &[_]i64{ 2, 4, 3, 0, 1, 5 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 0, 1, 2, 3, 4, 5 }, result);
    }
    {
        const result = try sortArray(std.testing.allocator, &[_]i64{ 2, 4, 3, 0, 1, 5, 6 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 6, 5, 4, 3, 2, 1, 0 }, result);
    }
    {
        const result = try sortArray(std.testing.allocator, &[_]i64{ 2, 1 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 2 }, result);
    }
    {
        const result = try sortArray(std.testing.allocator, &[_]i64{ 15, 42, 87, 32, 11, 0 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 0, 11, 15, 32, 42, 87 }, result);
    }
    {
        const result = try sortArray(std.testing.allocator, &[_]i64{ 21, 14, 23, 11 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 23, 21, 14, 11 }, result);
    }
}
