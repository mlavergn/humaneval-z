test "sortEven" {
    const cases = [_][2][]const i64{
        .{ &.{ 1, 2, 3 }, &.{ 1, 2, 3 } },
        .{ &.{ 5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10 }, &.{ -10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123 } },
        .{ &.{ 5, 8, -12, 4, 23, 2, 3, 11, 12, -10 }, &.{ -12, 8, 3, 4, 5, 2, 12, 11, 23, -10 } },
    };
    for (cases) |case| {
        const result = try sortEven(std.testing.allocator, case[0]);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualSlices(i64, case[1], result);
    }
}
