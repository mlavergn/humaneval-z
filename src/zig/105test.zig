test "byLength" {
    {
        const result = try byLength(std.testing.allocator, &[_]i64{ 2, 1, 1, 4, 5, 8, 2, 3 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "Eight", "Five", "Four", "Three", "Two", "Two", "One", "One" }, result);
    }
    {
        const result = try byLength(std.testing.allocator, &[_]i64{});
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{}, result);
    }
    {
        const result = try byLength(std.testing.allocator, &[_]i64{ 1, -1, 55 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "One" }, result);
    }
    {
        const result = try byLength(std.testing.allocator, &[_]i64{ 1, -1, 3, 2 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "Three", "Two", "One" }, result);
    }
    {
        const result = try byLength(std.testing.allocator, &[_]i64{ 9, 4, 8 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "Nine", "Eight", "Four" }, result);
    }
}
