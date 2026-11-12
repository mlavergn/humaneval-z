test "countUpTo" {
    {
        const result = try countUpTo(std.testing.allocator, 5);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 3 }, result);
    }
    {
        const result = try countUpTo(std.testing.allocator, 6);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 3, 5 }, result);
    }
    {
        const result = try countUpTo(std.testing.allocator, 7);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 3, 5 }, result);
    }
    {
        const result = try countUpTo(std.testing.allocator, 10);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 3, 5, 7 }, result);
    }
    {
        const result = try countUpTo(std.testing.allocator, 0);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{}, result);
    }
    {
        const result = try countUpTo(std.testing.allocator, 22);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 3, 5, 7, 11, 13, 17, 19 }, result);
    }
    {
        const result = try countUpTo(std.testing.allocator, 1);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{}, result);
    }
    {
        const result = try countUpTo(std.testing.allocator, 18);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 3, 5, 7, 11, 13, 17 }, result);
    }
    {
        const result = try countUpTo(std.testing.allocator, 47);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43 }, result);
    }
    {
        const result = try countUpTo(std.testing.allocator, 101);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97 }, result);
    }
}
