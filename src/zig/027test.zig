test "flipCase" {
    {
        const result = try flipCase(std.testing.allocator, "");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("", result);
    }
    {
        const result = try flipCase(std.testing.allocator, "Hello!");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("hELLO!", result);
    }
    {
        const result = try flipCase(std.testing.allocator, "These violent delights have violent ends");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS", result);
    }
}
