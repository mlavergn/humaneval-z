test "selectWords" {
    {
        const result = try selectWords(std.testing.allocator, "Mary had a little lamb", 4);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "little" }, result);
    }
    {
        const result = try selectWords(std.testing.allocator, "Mary had a little lamb", 3);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "Mary", "lamb" }, result);
    }
    {
        const result = try selectWords(std.testing.allocator, "simple white space", 2);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{}, result);
    }
    {
        const result = try selectWords(std.testing.allocator, "Hello world", 4);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "world" }, result);
    }
    {
        const result = try selectWords(std.testing.allocator, "Uncle sam", 3);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "Uncle" }, result);
    }
    {
        const result = try selectWords(std.testing.allocator, "", 4);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{}, result);
    }
    {
        const result = try selectWords(std.testing.allocator, "a b c d e f", 1);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "b", "c", "d", "f" }, result);
    }
}
