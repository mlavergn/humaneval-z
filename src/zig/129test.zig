test "minpath" {
    {
        const result = try minpath(std.testing.allocator, &[_][]const i64{ &[_]i64{ 1, 2, 3 }, &[_]i64{ 4, 5, 6 }, &[_]i64{ 7, 8, 9 } }, 3);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 2, 1 }, result);
    }
    {
        const result = try minpath(std.testing.allocator, &[_][]const i64{ &[_]i64{ 5, 9, 3 }, &[_]i64{ 4, 1, 6 }, &[_]i64{ 7, 8, 2 } }, 1);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1 }, result);
    }
    {
        const result = try minpath(std.testing.allocator, &[_][]const i64{ &[_]i64{ 1, 2, 3, 4 }, &[_]i64{ 5, 6, 7, 8 }, &[_]i64{ 9, 10, 11, 12 }, &[_]i64{ 13, 14, 15, 16 } }, 4);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 2, 1, 2 }, result);
    }
    {
        const result = try minpath(std.testing.allocator, &[_][]const i64{ &[_]i64{ 6, 4, 13, 10 }, &[_]i64{ 5, 7, 12, 1 }, &[_]i64{ 3, 16, 11, 15 }, &[_]i64{ 8, 14, 9, 2 } }, 7);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 10, 1, 10, 1, 10, 1 }, result);
    }
    {
        const result = try minpath(std.testing.allocator, &[_][]const i64{ &[_]i64{ 8, 14, 9, 2 }, &[_]i64{ 6, 4, 13, 15 }, &[_]i64{ 5, 7, 1, 12 }, &[_]i64{ 3, 10, 11, 16 } }, 5);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 7, 1, 7, 1 }, result);
    }
    {
        const result = try minpath(std.testing.allocator, &[_][]const i64{ &[_]i64{ 11, 8, 7, 2 }, &[_]i64{ 5, 16, 14, 4 }, &[_]i64{ 9, 3, 15, 6 }, &[_]i64{ 12, 13, 10, 1 } }, 9);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 6, 1, 6, 1, 6, 1, 6, 1 }, result);
    }
    {
        const result = try minpath(std.testing.allocator, &[_][]const i64{ &[_]i64{ 12, 13, 10, 1 }, &[_]i64{ 9, 3, 15, 6 }, &[_]i64{ 5, 16, 14, 4 }, &[_]i64{ 11, 8, 7, 2 } }, 12);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 6, 1, 6, 1, 6, 1, 6, 1, 6, 1, 6 }, result);
    }
    {
        const result = try minpath(std.testing.allocator, &[_][]const i64{ &[_]i64{ 2, 7, 4 }, &[_]i64{ 3, 1, 5 }, &[_]i64{ 6, 8, 9 } }, 8);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 3, 1, 3, 1, 3, 1, 3 }, result);
    }
    {
        const result = try minpath(std.testing.allocator, &[_][]const i64{ &[_]i64{ 6, 1, 5 }, &[_]i64{ 3, 8, 9 }, &[_]i64{ 2, 7, 4 } }, 8);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 5, 1, 5, 1, 5, 1, 5 }, result);
    }
    {
        const result = try minpath(std.testing.allocator, &[_][]const i64{ &[_]i64{ 1, 2 }, &[_]i64{ 3, 4 } }, 10);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 2, 1, 2, 1, 2, 1, 2, 1, 2 }, result);
    }
    {
        const result = try minpath(std.testing.allocator, &[_][]const i64{ &[_]i64{ 1, 3 }, &[_]i64{ 3, 2 } }, 10);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 1, 3, 1, 3, 1, 3, 1, 3, 1, 3 }, result);
    }
}
