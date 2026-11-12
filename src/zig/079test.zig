test "decimalToBinary" {
    {
        const result = try decimalToBinary(std.testing.allocator, 0);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("db0db", result);
    }
    {
        const result = try decimalToBinary(std.testing.allocator, 32);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("db100000db", result);
    }
    {
        const result = try decimalToBinary(std.testing.allocator, 103);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("db1100111db", result);
    }
    {
        const result = try decimalToBinary(std.testing.allocator, 15);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("db1111db", result);
    }
}
