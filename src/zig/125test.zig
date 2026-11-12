test "splitWords" {
    const word_cases = [_]struct { input: []const u8, want: []const []const u8 }{
        .{ .input = "Hello world!", .want = &.{ "Hello", "world!" } },
        .{ .input = "Hello,world!", .want = &.{ "Hello", "world!" } },
        .{ .input = "Hello world,!", .want = &.{ "Hello", "world,!" } },
        .{ .input = "Hello,Hello,world !", .want = &.{ "Hello,Hello,world", "!" } },
    };
    for (word_cases) |case| {
        const result = try splitWords(std.testing.allocator, case.input);
        try std.testing.expect(result == .words);
        defer std.testing.allocator.free(result.words);
        try std.testing.expectEqualDeep(case.want, @as([]const []const u8, result.words));
    }
    const count_cases = [_]struct { input: []const u8, want: i64 }{
        .{ .input = "abcdef", .want = 3 },
        .{ .input = "aaabb", .want = 2 },
        .{ .input = "aaaBb", .want = 1 },
        .{ .input = "", .want = 0 },
    };
    for (count_cases) |case| {
        try std.testing.expectEqualDeep(SplitResult{ .count = case.want }, try splitWords(std.testing.allocator, case.input));
    }
}
