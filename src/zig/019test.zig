test "sortNumbers" {
    {
        const result = try sortNumbers(std.testing.allocator, "");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("", result);
    }
    {
        const result = try sortNumbers(std.testing.allocator, "three");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("three", result);
    }
    {
        const result = try sortNumbers(std.testing.allocator, "three five nine");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("three five nine", result);
    }
    {
        const result = try sortNumbers(std.testing.allocator, "five zero four seven nine eight");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("zero four five seven eight nine", result);
    }
    {
        const result = try sortNumbers(std.testing.allocator, "six five four three two one zero");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("zero one two three four five six", result);
    }
}
