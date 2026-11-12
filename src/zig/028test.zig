test "concatenate" {
    {
        const result = try concatenate(std.testing.allocator, &[_][]const u8{});
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("", result);
    }
    {
        const result = try concatenate(std.testing.allocator, &[_][]const u8{ "x", "y", "z" });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("xyz", result);
    }
    {
        const result = try concatenate(std.testing.allocator, &[_][]const u8{ "x", "y", "z", "w", "k" });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("xyzwk", result);
    }
}
