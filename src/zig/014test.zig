test "allPrefixes" {
    {
        const result = try allPrefixes(std.testing.allocator, "");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{}, result);
    }
    {
        const result = try allPrefixes(std.testing.allocator, "asdfgh");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "a", "as", "asd", "asdf", "asdfg", "asdfgh" }, result);
    }
    {
        const result = try allPrefixes(std.testing.allocator, "WWW");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "W", "WW", "WWW" }, result);
    }
}
