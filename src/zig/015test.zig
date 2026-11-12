test "stringSequence" {
    {
        const result = try stringSequence(std.testing.allocator, 0);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("0", result);
    }
    {
        const result = try stringSequence(std.testing.allocator, 3);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("0 1 2 3", result);
    }
    {
        const result = try stringSequence(std.testing.allocator, 10);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("0 1 2 3 4 5 6 7 8 9 10", result);
    }
}
