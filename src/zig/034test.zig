test "unique" {
    {
        const result = try unique(std.testing.allocator, &[_]i64{ 5, 3, 5, 2, 3, 3, 9, 0, 123 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 0, 2, 3, 5, 9, 123 }, result);
    }
}
