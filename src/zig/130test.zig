test "tri" {
    {
        const result = try tri(std.testing.allocator, 3);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]f64{ 1, 3, 2.0, 8.0 }, result);
    }
    {
        const result = try tri(std.testing.allocator, 4);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]f64{ 1, 3, 2.0, 8.0, 3.0 }, result);
    }
    {
        const result = try tri(std.testing.allocator, 5);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]f64{ 1, 3, 2.0, 8.0, 3.0, 15.0 }, result);
    }
    {
        const result = try tri(std.testing.allocator, 6);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]f64{ 1, 3, 2.0, 8.0, 3.0, 15.0, 4.0 }, result);
    }
    {
        const result = try tri(std.testing.allocator, 7);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]f64{ 1, 3, 2.0, 8.0, 3.0, 15.0, 4.0, 24.0 }, result);
    }
    {
        const result = try tri(std.testing.allocator, 8);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]f64{ 1, 3, 2.0, 8.0, 3.0, 15.0, 4.0, 24.0, 5.0 }, result);
    }
    {
        const result = try tri(std.testing.allocator, 9);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]f64{ 1, 3, 2.0, 8.0, 3.0, 15.0, 4.0, 24.0, 5.0, 35.0 }, result);
    }
    {
        const result = try tri(std.testing.allocator, 20);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]f64{ 1, 3, 2.0, 8.0, 3.0, 15.0, 4.0, 24.0, 5.0, 35.0, 6.0, 48.0, 7.0, 63.0, 8.0, 80.0, 9.0, 99.0, 10.0, 120.0, 11.0 }, result);
    }
    {
        const result = try tri(std.testing.allocator, 0);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]f64{ 1 }, result);
    }
    {
        const result = try tri(std.testing.allocator, 1);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]f64{ 1, 3 }, result);
    }
}
