test "reverseDelete" {
    const cases = [_]struct { s: []const u8, c: []const u8, string: []const u8, is_palindrome: bool }{
        .{ .s = "abcde", .c = "ae", .string = "bcd", .is_palindrome = false },
        .{ .s = "abcdef", .c = "b", .string = "acdef", .is_palindrome = false },
        .{ .s = "abcdedcba", .c = "ab", .string = "cdedc", .is_palindrome = true },
        .{ .s = "dwik", .c = "w", .string = "dik", .is_palindrome = false },
        .{ .s = "a", .c = "a", .string = "", .is_palindrome = true },
        .{ .s = "abcdedcba", .c = "", .string = "abcdedcba", .is_palindrome = true },
        .{ .s = "abcdedcba", .c = "v", .string = "abcdedcba", .is_palindrome = true },
        .{ .s = "vabba", .c = "v", .string = "abba", .is_palindrome = true },
        .{ .s = "mamma", .c = "mia", .string = "", .is_palindrome = true },
    };
    for (cases) |case| {
        const result = try reverseDelete(std.testing.allocator, case.s, case.c);
        defer std.testing.allocator.free(result.string);
        try std.testing.expectEqualStrings(case.string, result.string);
        try std.testing.expectEqual(case.is_palindrome, result.is_palindrome);
    }
}
