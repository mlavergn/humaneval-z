test "getPositive" {
    {
        const result = try getPositive(std.testing.allocator, &[_]i64{ -1, -2, 4, 5, 6 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 4, 5, 6 }, result);
    }
    {
        const result = try getPositive(std.testing.allocator, &[_]i64{ 5, 3, -5, 2, 3, 3, 9, 0, 123, 1, -10 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 5, 3, 2, 3, 3, 9, 123, 1 }, result);
    }
    {
        const result = try getPositive(std.testing.allocator, &[_]i64{ -1, -2 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{}, result);
    }
    {
        const result = try getPositive(std.testing.allocator, &[_]i64{});
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{}, result);
    }
}
