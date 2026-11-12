test "solve" {
    {
        const result = try solve(std.testing.allocator, "AsDf");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("aSdF", result);
    }
    {
        const result = try solve(std.testing.allocator, "1234");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("4321", result);
    }
    {
        const result = try solve(std.testing.allocator, "ab");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("AB", result);
    }
    {
        const result = try solve(std.testing.allocator, "#a@C");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("#A@c", result);
    }
    {
        const result = try solve(std.testing.allocator, "#AsdfW^45");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("#aSDFw^45", result);
    }
    {
        const result = try solve(std.testing.allocator, "#6@2");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("2@6#", result);
    }
    {
        const result = try solve(std.testing.allocator, "#$a^D");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("#$A^d", result);
    }
    {
        const result = try solve(std.testing.allocator, "#ccc");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("#CCC", result);
    }
}
