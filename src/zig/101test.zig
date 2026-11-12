test "wordsString" {
    {
        const result = try wordsString(std.testing.allocator, "Hi, my name is John");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "Hi", "my", "name", "is", "John" }, result);
    }
    {
        const result = try wordsString(std.testing.allocator, "One, two, three, four, five, six");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "One", "two", "three", "four", "five", "six" }, result);
    }
    {
        const result = try wordsString(std.testing.allocator, "");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{}, result);
    }
    {
        const result = try wordsString(std.testing.allocator, "Hi, my name");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "Hi", "my", "name" }, result);
    }
    {
        const result = try wordsString(std.testing.allocator, "One,, two, three, four, five, six,");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "One", "two", "three", "four", "five", "six" }, result);
    }
    {
        const result = try wordsString(std.testing.allocator, "ahmed     , gamal");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "ahmed", "gamal" }, result);
    }
}
