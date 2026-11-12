test "sortedListSum" {
    {
        const result = try sortedListSum(std.testing.allocator, &[_][]const u8{ "aa", "a", "aaa" });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "aa" }, result);
    }
    {
        const result = try sortedListSum(std.testing.allocator, &[_][]const u8{ "school", "AI", "asdf", "b" });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "AI", "asdf", "school" }, result);
    }
    {
        const result = try sortedListSum(std.testing.allocator, &[_][]const u8{ "d", "b", "c", "a" });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{}, result);
    }
    {
        const result = try sortedListSum(std.testing.allocator, &[_][]const u8{ "d", "dcba", "abcd", "a" });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "abcd", "dcba" }, result);
    }
    {
        const result = try sortedListSum(std.testing.allocator, &[_][]const u8{ "AI", "ai", "au" });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "AI", "ai", "au" }, result);
    }
    {
        const result = try sortedListSum(std.testing.allocator, &[_][]const u8{ "a", "b", "b", "c", "c", "a" });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{}, result);
    }
    {
        const result = try sortedListSum(std.testing.allocator, &[_][]const u8{ "aaaa", "bbbb", "dd", "cc" });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "cc", "dd", "aaaa", "bbbb" }, result);
    }
}
