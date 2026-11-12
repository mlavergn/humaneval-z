test "rollingMax" {
    {
        const result = try rollingMax(std.testing.allocator, &[_]i64{});
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{}, result);
    }
    {
        const result = try rollingMax(std.testing.allocator, &[_]i64{ 1, 2, 3, 4 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 2, 3, 4 }, result);
    }
    {
        const result = try rollingMax(std.testing.allocator, &[_]i64{ 4, 3, 2, 1 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 4, 4, 4, 4 }, result);
    }
    {
        const result = try rollingMax(std.testing.allocator, &[_]i64{ 3, 2, 3, 100, 3 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 3, 3, 3, 100, 100 }, result);
    }
}
