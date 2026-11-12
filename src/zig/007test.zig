test "filterBySubstring" {
    {
        const result = try filterBySubstring(std.testing.allocator, &[_][]const u8{}, "john");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{}, result);
    }
    {
        const result = try filterBySubstring(std.testing.allocator, &[_][]const u8{ "xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx" }, "xxx");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "xxx", "xxxAAA", "xxx" }, result);
    }
    {
        const result = try filterBySubstring(std.testing.allocator, &[_][]const u8{ "xxx", "asd", "aaaxxy", "john doe", "xxxAAA", "xxx" }, "xx");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "xxx", "aaaxxy", "xxxAAA", "xxx" }, result);
    }
    {
        const result = try filterBySubstring(std.testing.allocator, &[_][]const u8{ "grunt", "trumpet", "prune", "gruesome" }, "run");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "grunt", "prune" }, result);
    }
}
