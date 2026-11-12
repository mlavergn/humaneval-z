test "intToMiniRoman" {
    {
        const result = try intToMiniRoman(std.testing.allocator, 19);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("xix", result);
    }
    {
        const result = try intToMiniRoman(std.testing.allocator, 152);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("clii", result);
    }
    {
        const result = try intToMiniRoman(std.testing.allocator, 251);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("ccli", result);
    }
    {
        const result = try intToMiniRoman(std.testing.allocator, 426);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("cdxxvi", result);
    }
    {
        const result = try intToMiniRoman(std.testing.allocator, 500);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("d", result);
    }
    {
        const result = try intToMiniRoman(std.testing.allocator, 1);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("i", result);
    }
    {
        const result = try intToMiniRoman(std.testing.allocator, 4);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("iv", result);
    }
    {
        const result = try intToMiniRoman(std.testing.allocator, 43);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("xliii", result);
    }
    {
        const result = try intToMiniRoman(std.testing.allocator, 90);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("xc", result);
    }
    {
        const result = try intToMiniRoman(std.testing.allocator, 94);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("xciv", result);
    }
    {
        const result = try intToMiniRoman(std.testing.allocator, 532);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("dxxxii", result);
    }
    {
        const result = try intToMiniRoman(std.testing.allocator, 900);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("cm", result);
    }
    {
        const result = try intToMiniRoman(std.testing.allocator, 994);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("cmxciv", result);
    }
    {
        const result = try intToMiniRoman(std.testing.allocator, 1000);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("m", result);
    }
}
