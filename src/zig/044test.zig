test "changeBase" {
    const cases = [_]struct { x: i64, base: i64, want: []const u8 }{
        .{ .x = 8, .base = 3, .want = "22" },
        .{ .x = 9, .base = 3, .want = "100" },
        .{ .x = 234, .base = 2, .want = "11101010" },
        .{ .x = 16, .base = 2, .want = "10000" },
        .{ .x = 8, .base = 2, .want = "1000" },
        .{ .x = 7, .base = 2, .want = "111" },
        .{ .x = 2, .base = 3, .want = "2" },
        .{ .x = 3, .base = 4, .want = "3" },
        .{ .x = 4, .base = 5, .want = "4" },
        .{ .x = 5, .base = 6, .want = "5" },
        .{ .x = 6, .base = 7, .want = "6" },
        .{ .x = 7, .base = 8, .want = "7" },
    };
    for (cases) |case| {
        const result = try changeBase(std.testing.allocator, case.x, case.base);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings(case.want, result);
    }
}
