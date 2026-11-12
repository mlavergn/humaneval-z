test "generateIntegers" {
    {
        const result = try generateIntegers(std.testing.allocator, 2, 10);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 4, 6, 8 }, result);
    }
    {
        const result = try generateIntegers(std.testing.allocator, 10, 2);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 4, 6, 8 }, result);
    }
    {
        const result = try generateIntegers(std.testing.allocator, 132, 2);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 4, 6, 8 }, result);
    }
    {
        const result = try generateIntegers(std.testing.allocator, 17, 89);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{}, result);
    }
}
