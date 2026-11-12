test "antiShuffle" {
    {
        const result = try antiShuffle(std.testing.allocator, "Hi");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("Hi", result);
    }
    {
        const result = try antiShuffle(std.testing.allocator, "hello");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("ehllo", result);
    }
    {
        const result = try antiShuffle(std.testing.allocator, "number");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("bemnru", result);
    }
    {
        const result = try antiShuffle(std.testing.allocator, "abcd");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("abcd", result);
    }
    {
        const result = try antiShuffle(std.testing.allocator, "Hello World!!!");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("Hello !!!Wdlor", result);
    }
    {
        const result = try antiShuffle(std.testing.allocator, "");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("", result);
    }
    {
        const result = try antiShuffle(std.testing.allocator, "Hi. My name is Mister Robot. How are you?");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings(".Hi My aemn is Meirst .Rboot How aer ?ouy", result);
    }
}
