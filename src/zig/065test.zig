test "circularShift" {
    {
        const result = try circularShift(std.testing.allocator, 100, 2);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("001", result);
    }
    {
        const result = try circularShift(std.testing.allocator, 12, 2);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("12", result);
    }
    {
        const result = try circularShift(std.testing.allocator, 97, 8);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("79", result);
    }
    {
        const result = try circularShift(std.testing.allocator, 12, 1);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("21", result);
    }
    {
        const result = try circularShift(std.testing.allocator, 11, 101);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("11", result);
    }
}
