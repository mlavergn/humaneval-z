test "longest" {
    try std.testing.expect(longest(&[_][]const u8{}) == null);
    {
        const result = (longest(&[_][]const u8{ "x", "y", "z" })).?;
        try std.testing.expectEqualStrings("x", result);
    }
    {
        const result = (longest(&[_][]const u8{ "x", "yyy", "zzzz", "www", "kkkk", "abc" })).?;
        try std.testing.expectEqualStrings("zzzz", result);
    }
}
