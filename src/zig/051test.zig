test "removeVowels" {
    {
        const result = try removeVowels(std.testing.allocator, "");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("", result);
    }
    {
        const result = try removeVowels(std.testing.allocator, "abcdef\nghijklm");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("bcdf\nghjklm", result);
    }
    {
        const result = try removeVowels(std.testing.allocator, "fedcba");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("fdcb", result);
    }
    {
        const result = try removeVowels(std.testing.allocator, "eeeee");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("", result);
    }
    {
        const result = try removeVowels(std.testing.allocator, "acBAA");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("cB", result);
    }
    {
        const result = try removeVowels(std.testing.allocator, "EcBOO");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("cB", result);
    }
    {
        const result = try removeVowels(std.testing.allocator, "ybcd");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("ybcd", result);
    }
}
