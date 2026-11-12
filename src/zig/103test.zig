test "roundedAvg" {
    {
        const result = (try roundedAvg(std.testing.allocator, 1, 5)).?;
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("0b11", result);
    }
    {
        const result = (try roundedAvg(std.testing.allocator, 7, 13)).?;
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("0b1010", result);
    }
    {
        const result = (try roundedAvg(std.testing.allocator, 964, 977)).?;
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("0b1111001011", result);
    }
    {
        const result = (try roundedAvg(std.testing.allocator, 996, 997)).?;
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("0b1111100101", result);
    }
    {
        const result = (try roundedAvg(std.testing.allocator, 560, 851)).?;
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("0b1011000010", result);
    }
    {
        const result = (try roundedAvg(std.testing.allocator, 185, 546)).?;
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("0b101101110", result);
    }
    {
        const result = (try roundedAvg(std.testing.allocator, 362, 496)).?;
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("0b110101101", result);
    }
    {
        const result = (try roundedAvg(std.testing.allocator, 350, 902)).?;
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("0b1001110010", result);
    }
    {
        const result = (try roundedAvg(std.testing.allocator, 197, 233)).?;
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("0b11010111", result);
    }
    try std.testing.expect((try roundedAvg(std.testing.allocator, 7, 5)) == null);
    try std.testing.expect((try roundedAvg(std.testing.allocator, 5, 1)) == null);
    {
        const result = (try roundedAvg(std.testing.allocator, 5, 5)).?;
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("0b101", result);
    }
}
