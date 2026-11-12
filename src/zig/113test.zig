test "oddCount" {
    {
        const result = try oddCount(std.testing.allocator, &[_][]const u8{ "1234567" });
        defer {
            for (result) |s| std.testing.allocator.free(s);
            std.testing.allocator.free(result);
        }
        const expected: []const []const u8 = &[_][]const u8{ "the number of odd elements 4n the str4ng 4 of the 4nput." };
        try std.testing.expectEqual(expected.len, result.len);
        for (expected, result) |e, r| try std.testing.expectEqualStrings(e, r);
    }
    {
        const result = try oddCount(std.testing.allocator, &[_][]const u8{ "3", "11111111" });
        defer {
            for (result) |s| std.testing.allocator.free(s);
            std.testing.allocator.free(result);
        }
        const expected: []const []const u8 = &[_][]const u8{ "the number of odd elements 1n the str1ng 1 of the 1nput.", "the number of odd elements 8n the str8ng 8 of the 8nput." };
        try std.testing.expectEqual(expected.len, result.len);
        for (expected, result) |e, r| try std.testing.expectEqualStrings(e, r);
    }
    {
        const result = try oddCount(std.testing.allocator, &[_][]const u8{ "271", "137", "314" });
        defer {
            for (result) |s| std.testing.allocator.free(s);
            std.testing.allocator.free(result);
        }
        const expected: []const []const u8 = &[_][]const u8{ "the number of odd elements 2n the str2ng 2 of the 2nput.", "the number of odd elements 3n the str3ng 3 of the 3nput.", "the number of odd elements 2n the str2ng 2 of the 2nput." };
        try std.testing.expectEqual(expected.len, result.len);
        for (expected, result) |e, r| try std.testing.expectEqualStrings(e, r);
    }
}
