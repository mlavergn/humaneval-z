test "derivative" {
    {
        const result = try derivative(std.testing.allocator, &[_]i64{ 3, 1, 2, 4, 5 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 4, 12, 20 }, result);
    }
    {
        const result = try derivative(std.testing.allocator, &[_]i64{ 1, 2, 3 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 6 }, result);
    }
    {
        const result = try derivative(std.testing.allocator, &[_]i64{ 3, 2, 1 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 2 }, result);
    }
    {
        const result = try derivative(std.testing.allocator, &[_]i64{ 3, 2, 1, 0, 4 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 2, 0, 16 }, result);
    }
    {
        const result = try derivative(std.testing.allocator, &[_]i64{ 1 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{}, result);
    }
}
