test "stringToMd5" {
    {
        const result = (try stringToMd5(std.testing.allocator, "Hello world")).?;
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("3e25960a79dbc69b674cd4ec67a72c62", result);
    }
    try std.testing.expect(try stringToMd5(std.testing.allocator, "") == null);
    {
        const result = (try stringToMd5(std.testing.allocator, "A B C")).?;
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("0ef78513b0cb8cef12743f5aeb35f888", result);
    }
    {
        const result = (try stringToMd5(std.testing.allocator, "password")).?;
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("5f4dcc3b5aa765d61d8327deb882cf99", result);
    }
}
