test "getOddCollatz" {
    {
        const result = try getOddCollatz(std.testing.allocator, 14);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 5, 7, 11, 13, 17 }, result);
    }
    {
        const result = try getOddCollatz(std.testing.allocator, 5);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 5 }, result);
    }
    {
        const result = try getOddCollatz(std.testing.allocator, 12);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 3, 5 }, result);
    }
    {
        const result = try getOddCollatz(std.testing.allocator, 1);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1 }, result);
    }
}
