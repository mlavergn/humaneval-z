test "removeDuplicates" {
    {
        const result = try removeDuplicates(std.testing.allocator, &[_]i64{});
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{}, result);
    }
    {
        const result = try removeDuplicates(std.testing.allocator, &[_]i64{ 1, 2, 3, 4 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 2, 3, 4 }, result);
    }
    {
        const result = try removeDuplicates(std.testing.allocator, &[_]i64{ 1, 2, 3, 2, 4, 3, 5 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 4, 5 }, result);
    }
}
