test "encrypt" {
    {
        const result = try encrypt(std.testing.allocator, "hi");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("lm", result);
    }
    {
        const result = try encrypt(std.testing.allocator, "asdfghjkl");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("ewhjklnop", result);
    }
    {
        const result = try encrypt(std.testing.allocator, "gf");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("kj", result);
    }
    {
        const result = try encrypt(std.testing.allocator, "et");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("ix", result);
    }
    {
        const result = try encrypt(std.testing.allocator, "faewfawefaewg");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("jeiajeaijeiak", result);
    }
    {
        const result = try encrypt(std.testing.allocator, "hellomyfriend");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("lippsqcjvmirh", result);
    }
    {
        const result = try encrypt(std.testing.allocator, "dxzdlmnilfuhmilufhlihufnmlimnufhlimnufhfucufh");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl", result);
    }
    {
        const result = try encrypt(std.testing.allocator, "a");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("e", result);
    }
}
