test "encode" {
    {
        const result = try encode(std.testing.allocator, "TEST");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("tgst", result);
    }
    {
        const result = try encode(std.testing.allocator, "Mudasir");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("mWDCSKR", result);
    }
    {
        const result = try encode(std.testing.allocator, "YES");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("ygs", result);
    }
    {
        const result = try encode(std.testing.allocator, "This is a message");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("tHKS KS C MGSSCGG", result);
    }
    {
        const result = try encode(std.testing.allocator, "I DoNt KnOw WhAt tO WrItE");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("k dQnT kNqW wHcT Tq wRkTg", result);
    }
}
