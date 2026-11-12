test "stringXor" {
    {
        const result = try stringXor(std.testing.allocator, "111000", "101010");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("010010", result);
    }
    {
        const result = try stringXor(std.testing.allocator, "1", "1");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("0", result);
    }
    {
        const result = try stringXor(std.testing.allocator, "0101", "0000");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("0101", result);
    }
}
