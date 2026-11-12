test "uniqueDigits" {
    {
        const result = try uniqueDigits(std.testing.allocator, &[_]i64{ 15, 33, 1422, 1 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 15, 33 }, result);
    }
    {
        const result = try uniqueDigits(std.testing.allocator, &[_]i64{ 152, 323, 1422, 10 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{}, result);
    }
    {
        const result = try uniqueDigits(std.testing.allocator, &[_]i64{ 12345, 2033, 111, 151 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 111, 151 }, result);
    }
    {
        const result = try uniqueDigits(std.testing.allocator, &[_]i64{ 135, 103, 31 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 31, 135 }, result);
    }
}
