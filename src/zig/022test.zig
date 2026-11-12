test "filterIntegers" {
    {
        const result = try filterIntegers(std.testing.allocator, &[_]Value{});
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{}, result);
    }
    {
        const result = try filterIntegers(std.testing.allocator, &[_]Value{ .{ .int = 4 }, .none, .{ .list = &.{} }, .{ .float = 23.2 }, .{ .int = 9 }, .{ .string = "adasd" } });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 4, 9 }, result);
    }
    {
        const result = try filterIntegers(std.testing.allocator, &[_]Value{ .{ .int = 3 }, .{ .string = "c" }, .{ .int = 3 }, .{ .int = 3 }, .{ .string = "a" }, .{ .string = "b" } });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 3, 3, 3 }, result);
    }
}
