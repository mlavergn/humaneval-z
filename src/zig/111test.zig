test "histogram" {
    const cases = [_]struct { input: []const u8, want: []const LetterCount }{
        .{ .input = "a b b a", .want = &.{ .{ .letter = 'a', .count = 2 }, .{ .letter = 'b', .count = 2 } } },
        .{ .input = "a b c a b", .want = &.{ .{ .letter = 'a', .count = 2 }, .{ .letter = 'b', .count = 2 } } },
        .{ .input = "a b c d g", .want = &.{ .{ .letter = 'a', .count = 1 }, .{ .letter = 'b', .count = 1 }, .{ .letter = 'c', .count = 1 }, .{ .letter = 'd', .count = 1 }, .{ .letter = 'g', .count = 1 } } },
        .{ .input = "r t g", .want = &.{ .{ .letter = 'g', .count = 1 }, .{ .letter = 'r', .count = 1 }, .{ .letter = 't', .count = 1 } } },
        .{ .input = "b b b b a", .want = &.{.{ .letter = 'b', .count = 4 }} },
        .{ .input = "", .want = &.{} },
        .{ .input = "a", .want = &.{.{ .letter = 'a', .count = 1 }} },
    };
    for (cases) |case| {
        const result = try histogram(std.testing.allocator, case.input);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualSlices(LetterCount, case.want, result);
    }
}
