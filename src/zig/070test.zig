test "strangeSortList" {
    {
        const result = try strangeSortList(std.testing.allocator, &[_]i64{ 1, 2, 3, 4 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 4, 2, 3 }, result);
    }
    {
        const result = try strangeSortList(std.testing.allocator, &[_]i64{ 5, 6, 7, 8, 9 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 5, 9, 6, 8, 7 }, result);
    }
    {
        const result = try strangeSortList(std.testing.allocator, &[_]i64{ 1, 2, 3, 4, 5 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 5, 2, 4, 3 }, result);
    }
    {
        const result = try strangeSortList(std.testing.allocator, &[_]i64{ 5, 6, 7, 8, 9, 1 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 9, 5, 8, 6, 7 }, result);
    }
    {
        const result = try strangeSortList(std.testing.allocator, &[_]i64{ 5, 5, 5, 5 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 5, 5, 5, 5 }, result);
    }
    {
        const result = try strangeSortList(std.testing.allocator, &[_]i64{});
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{}, result);
    }
    {
        const result = try strangeSortList(std.testing.allocator, &[_]i64{ 1, 2, 3, 4, 5, 6, 7, 8 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 8, 2, 7, 3, 6, 4, 5 }, result);
    }
    {
        const result = try strangeSortList(std.testing.allocator, &[_]i64{ 0, 2, 2, 2, 5, 5, -5, -5 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ -5, 5, -5, 5, 0, 2, 2, 2 }, result);
    }
    {
        const result = try strangeSortList(std.testing.allocator, &[_]i64{ 111111 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 111111 }, result);
    }
}
