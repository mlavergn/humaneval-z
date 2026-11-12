test "makePalindrome" {
    {
        const result = try makePalindrome(std.testing.allocator, "");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("", result);
    }
    {
        const result = try makePalindrome(std.testing.allocator, "x");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("x", result);
    }
    {
        const result = try makePalindrome(std.testing.allocator, "xyz");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("xyzyx", result);
    }
    {
        const result = try makePalindrome(std.testing.allocator, "xyx");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("xyx", result);
    }
    {
        const result = try makePalindrome(std.testing.allocator, "jerry");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("jerryrrej", result);
    }
}
