test "parseMusic" {
    {
        const result = try parseMusic(std.testing.allocator, "");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{}, result);
    }
    {
        const result = try parseMusic(std.testing.allocator, "o o o o");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 4, 4, 4, 4 }, result);
    }
    {
        const result = try parseMusic(std.testing.allocator, ".| .| .| .|");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 1, 1, 1 }, result);
    }
    {
        const result = try parseMusic(std.testing.allocator, "o| o| .| .| o o o o");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 2, 1, 1, 4, 4, 4, 4 }, result);
    }
    {
        const result = try parseMusic(std.testing.allocator, "o| .| o| .| o o| o o|");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 1, 2, 1, 4, 2, 4, 2 }, result);
    }
}
