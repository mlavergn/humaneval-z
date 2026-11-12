test "totalMatch" {
    {
        const result = totalMatch(&[_][]const u8{}, &[_][]const u8{});
        try std.testing.expectEqualDeep(&[_][]const u8{}, result);
    }
    {
        const result = totalMatch(&[_][]const u8{ "hi", "admin" }, &[_][]const u8{ "hi", "hi" });
        try std.testing.expectEqualDeep(&[_][]const u8{ "hi", "hi" }, result);
    }
    {
        const result = totalMatch(&[_][]const u8{ "hi", "admin" }, &[_][]const u8{ "hi", "hi", "admin", "project" });
        try std.testing.expectEqualDeep(&[_][]const u8{ "hi", "admin" }, result);
    }
    {
        const result = totalMatch(&[_][]const u8{ "4" }, &[_][]const u8{ "1", "2", "3", "4", "5" });
        try std.testing.expectEqualDeep(&[_][]const u8{ "4" }, result);
    }
    {
        const result = totalMatch(&[_][]const u8{ "hi", "admin" }, &[_][]const u8{ "hI", "Hi" });
        try std.testing.expectEqualDeep(&[_][]const u8{ "hI", "Hi" }, result);
    }
    {
        const result = totalMatch(&[_][]const u8{ "hi", "admin" }, &[_][]const u8{ "hI", "hi", "hi" });
        try std.testing.expectEqualDeep(&[_][]const u8{ "hI", "hi", "hi" }, result);
    }
    {
        const result = totalMatch(&[_][]const u8{ "hi", "admin" }, &[_][]const u8{ "hI", "hi", "hii" });
        try std.testing.expectEqualDeep(&[_][]const u8{ "hi", "admin" }, result);
    }
    {
        const result = totalMatch(&[_][]const u8{}, &[_][]const u8{ "this" });
        try std.testing.expectEqualDeep(&[_][]const u8{}, result);
    }
    {
        const result = totalMatch(&[_][]const u8{ "this" }, &[_][]const u8{});
        try std.testing.expectEqualDeep(&[_][]const u8{}, result);
    }
}
