test "rescaleToUnit" {
    {
        const result = try rescaleToUnit(std.testing.allocator, &[_]f64{ 2.0, 49.9 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]f64{ 0.0, 1.0 }, result);
    }
    {
        const result = try rescaleToUnit(std.testing.allocator, &[_]f64{ 100.0, 49.9 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]f64{ 1.0, 0.0 }, result);
    }
    {
        const result = try rescaleToUnit(std.testing.allocator, &[_]f64{ 1.0, 2.0, 3.0, 4.0, 5.0 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]f64{ 0.0, 0.25, 0.5, 0.75, 1.0 }, result);
    }
    {
        const result = try rescaleToUnit(std.testing.allocator, &[_]f64{ 2.0, 1.0, 5.0, 3.0, 4.0 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]f64{ 0.25, 0.0, 1.0, 0.5, 0.75 }, result);
    }
    {
        const result = try rescaleToUnit(std.testing.allocator, &[_]f64{ 12.0, 11.0, 15.0, 13.0, 14.0 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]f64{ 0.25, 0.0, 1.0, 0.5, 0.75 }, result);
    }
}
