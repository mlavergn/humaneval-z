test "filterByPrefix" {
    {
        const result = try filterByPrefix(std.testing.allocator, &[_][]const u8{}, "john");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{}, result);
    }
    {
        const result = try filterByPrefix(std.testing.allocator, &[_][]const u8{ "xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx" }, "xxx");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "xxx", "xxxAAA", "xxx" }, result);
    }
}
