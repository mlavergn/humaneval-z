test "parseNestedParens" {
    {
        const result = try parseNestedParens(std.testing.allocator, "(()()) ((())) () ((())()())");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 3, 1, 3 }, result);
    }
    {
        const result = try parseNestedParens(std.testing.allocator, "() (()) ((())) (((())))");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 2, 3, 4 }, result);
    }
    {
        const result = try parseNestedParens(std.testing.allocator, "(()(())((())))");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 4 }, result);
    }
}
