test "solve" {
    {
        const result = try solve(std.testing.allocator, 1000);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("1", result);
    }
    {
        const result = try solve(std.testing.allocator, 150);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("110", result);
    }
    {
        const result = try solve(std.testing.allocator, 147);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("1100", result);
    }
    {
        const result = try solve(std.testing.allocator, 333);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("1001", result);
    }
    {
        const result = try solve(std.testing.allocator, 963);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("10010", result);
    }
}
