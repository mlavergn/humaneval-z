test "maximum" {
    {
        const result = try maximum(std.testing.allocator, &[_]i64{ -3, -4, 5 }, 3);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ -4, -3, 5 }, result);
    }
    {
        const result = try maximum(std.testing.allocator, &[_]i64{ 4, -4, 4 }, 2);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 4, 4 }, result);
    }
    {
        const result = try maximum(std.testing.allocator, &[_]i64{ -3, 2, 1, 2, -1, -2, 1 }, 1);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2 }, result);
    }
    {
        const result = try maximum(std.testing.allocator, &[_]i64{ 123, -123, 20, 0, 1, 2, -3 }, 3);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 2, 20, 123 }, result);
    }
    {
        const result = try maximum(std.testing.allocator, &[_]i64{ -123, 20, 0, 1, 2, -3 }, 4);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 0, 1, 2, 20 }, result);
    }
    {
        const result = try maximum(std.testing.allocator, &[_]i64{ 5, 15, 0, 3, -13, -8, 0 }, 7);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ -13, -8, 0, 0, 3, 5, 15 }, result);
    }
    {
        const result = try maximum(std.testing.allocator, &[_]i64{ -1, 0, 2, 5, 3, -10 }, 2);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 3, 5 }, result);
    }
    {
        const result = try maximum(std.testing.allocator, &[_]i64{ 1, 0, 5, -7 }, 1);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 5 }, result);
    }
    {
        const result = try maximum(std.testing.allocator, &[_]i64{ 4, -4 }, 2);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ -4, 4 }, result);
    }
    {
        const result = try maximum(std.testing.allocator, &[_]i64{ -10, 10 }, 2);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ -10, 10 }, result);
    }
    {
        const result = try maximum(std.testing.allocator, &[_]i64{ 1, 2, 3, -23, 243, -400, 0 }, 0);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{}, result);
    }
}
