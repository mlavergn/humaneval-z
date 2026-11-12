test "getRow" {
    {
        const result = try getRow(std.testing.allocator, &[_][]const i64{ &[_]i64{ 1, 2, 3, 4, 5, 6 }, &[_]i64{ 1, 2, 3, 4, 1, 6 }, &[_]i64{ 1, 2, 3, 4, 5, 1 } }, 1);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][2]i64{ [2]i64{ 0, 0 }, [2]i64{ 1, 4 }, [2]i64{ 1, 0 }, [2]i64{ 2, 5 }, [2]i64{ 2, 0 } }, result);
    }
    {
        const result = try getRow(std.testing.allocator, &[_][]const i64{ &[_]i64{ 1, 2, 3, 4, 5, 6 }, &[_]i64{ 1, 2, 3, 4, 5, 6 }, &[_]i64{ 1, 2, 3, 4, 5, 6 }, &[_]i64{ 1, 2, 3, 4, 5, 6 }, &[_]i64{ 1, 2, 3, 4, 5, 6 }, &[_]i64{ 1, 2, 3, 4, 5, 6 } }, 2);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][2]i64{ [2]i64{ 0, 1 }, [2]i64{ 1, 1 }, [2]i64{ 2, 1 }, [2]i64{ 3, 1 }, [2]i64{ 4, 1 }, [2]i64{ 5, 1 } }, result);
    }
    {
        const result = try getRow(std.testing.allocator, &[_][]const i64{ &[_]i64{ 1, 2, 3, 4, 5, 6 }, &[_]i64{ 1, 2, 3, 4, 5, 6 }, &[_]i64{ 1, 1, 3, 4, 5, 6 }, &[_]i64{ 1, 2, 1, 4, 5, 6 }, &[_]i64{ 1, 2, 3, 1, 5, 6 }, &[_]i64{ 1, 2, 3, 4, 1, 6 }, &[_]i64{ 1, 2, 3, 4, 5, 1 } }, 1);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][2]i64{ [2]i64{ 0, 0 }, [2]i64{ 1, 0 }, [2]i64{ 2, 1 }, [2]i64{ 2, 0 }, [2]i64{ 3, 2 }, [2]i64{ 3, 0 }, [2]i64{ 4, 3 }, [2]i64{ 4, 0 }, [2]i64{ 5, 4 }, [2]i64{ 5, 0 }, [2]i64{ 6, 5 }, [2]i64{ 6, 0 } }, result);
    }
    {
        const result = try getRow(std.testing.allocator, &[_][]const i64{ &[_]i64{} }, 1);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][2]i64{}, result);
    }
    {
        const result = try getRow(std.testing.allocator, &[_][]const i64{ &[_]i64{ 1 } }, 2);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][2]i64{}, result);
    }
    {
        const result = try getRow(std.testing.allocator, &[_][]const i64{ &[_]i64{}, &[_]i64{ 1 }, &[_]i64{ 1, 2, 3 } }, 3);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][2]i64{ [2]i64{ 2, 2 } }, result);
    }
}
