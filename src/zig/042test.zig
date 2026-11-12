test "incrList" {
    {
        const result = try incrList(std.testing.allocator, &[_]i64{});
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{}, result);
    }
    {
        const result = try incrList(std.testing.allocator, &[_]i64{ 3, 2, 1 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 4, 3, 2 }, result);
    }
    {
        const result = try incrList(std.testing.allocator, &[_]i64{ 5, 2, 5, 2, 3, 3, 9, 0, 123 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 6, 3, 6, 3, 4, 4, 10, 1, 124 }, result);
    }
}
