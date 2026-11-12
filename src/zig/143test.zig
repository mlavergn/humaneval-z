test "wordsInSentence" {
    {
        const result = try wordsInSentence(std.testing.allocator, "This is a test");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("is", result);
    }
    {
        const result = try wordsInSentence(std.testing.allocator, "lets go for swimming");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("go for", result);
    }
    {
        const result = try wordsInSentence(std.testing.allocator, "there is no place available here");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("there is no place", result);
    }
    {
        const result = try wordsInSentence(std.testing.allocator, "Hi I am Hussein");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("Hi am Hussein", result);
    }
    {
        const result = try wordsInSentence(std.testing.allocator, "go for it");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("go for it", result);
    }
    {
        const result = try wordsInSentence(std.testing.allocator, "here");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("", result);
    }
    {
        const result = try wordsInSentence(std.testing.allocator, "here is");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("is", result);
    }
}
