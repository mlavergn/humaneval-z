test "sortThird" {
    const cases = [_][2][]const i64{
        .{ &.{ 1, 2, 3 }, &.{ 1, 2, 3 } },
        .{ &.{ 5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10 }, &.{ 1, 3, -5, 2, -3, 3, 5, 0, 123, 9, -10 } },
        .{ &.{ 5, 8, -12, 4, 23, 2, 3, 11, 12, -10 }, &.{ -10, 8, -12, 3, 23, 2, 4, 11, 12, 5 } },
        .{ &.{ 5, 6, 3, 4, 8, 9, 2 }, &.{ 2, 6, 3, 4, 8, 9, 5 } },
        .{ &.{ 5, 8, 3, 4, 6, 9, 2 }, &.{ 2, 8, 3, 4, 6, 9, 5 } },
        .{ &.{ 5, 6, 9, 4, 8, 3, 2 }, &.{ 2, 6, 9, 4, 8, 3, 5 } },
        .{ &.{ 5, 6, 3, 4, 8, 9, 2, 1 }, &.{ 2, 6, 3, 4, 8, 9, 5, 1 } },
    };
    for (cases) |case| {
        const result = try sortThird(std.testing.allocator, case[0]);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualSlices(i64, case[1], result);
    }
}
