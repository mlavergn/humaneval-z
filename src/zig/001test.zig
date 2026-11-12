test "separateParenGroups" {
    {
        const result = try separateParenGroups(std.testing.allocator, "(()()) ((())) () ((())()())");
        defer {
            for (result) |s| std.testing.allocator.free(s);
            std.testing.allocator.free(result);
        }
        const expected: []const []const u8 = &[_][]const u8{ "(()())", "((()))", "()", "((())()())" };
        try std.testing.expectEqual(expected.len, result.len);
        for (expected, result) |e, r| try std.testing.expectEqualStrings(e, r);
    }
    {
        const result = try separateParenGroups(std.testing.allocator, "() (()) ((())) (((())))");
        defer {
            for (result) |s| std.testing.allocator.free(s);
            std.testing.allocator.free(result);
        }
        const expected: []const []const u8 = &[_][]const u8{ "()", "(())", "((()))", "(((())))" };
        try std.testing.expectEqual(expected.len, result.len);
        for (expected, result) |e, r| try std.testing.expectEqualStrings(e, r);
    }
    {
        const result = try separateParenGroups(std.testing.allocator, "(()(())((())))");
        defer {
            for (result) |s| std.testing.allocator.free(s);
            std.testing.allocator.free(result);
        }
        const expected: []const []const u8 = &[_][]const u8{ "(()(())((())))" };
        try std.testing.expectEqual(expected.len, result.len);
        for (expected, result) |e, r| try std.testing.expectEqualStrings(e, r);
    }
    {
        const result = try separateParenGroups(std.testing.allocator, "( ) (( )) (( )( ))");
        defer {
            for (result) |s| std.testing.allocator.free(s);
            std.testing.allocator.free(result);
        }
        const expected: []const []const u8 = &[_][]const u8{ "()", "(())", "(()())" };
        try std.testing.expectEqual(expected.len, result.len);
        for (expected, result) |e, r| try std.testing.expectEqualStrings(e, r);
    }
}
