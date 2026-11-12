test "fixSpaces" {
    {
        const result = try fixSpaces(std.testing.allocator, "Example");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("Example", result);
    }
    {
        const result = try fixSpaces(std.testing.allocator, "Mudasir Hanif ");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("Mudasir_Hanif_", result);
    }
    {
        const result = try fixSpaces(std.testing.allocator, "Yellow Yellow  Dirty  Fellow");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("Yellow_Yellow__Dirty__Fellow", result);
    }
    {
        const result = try fixSpaces(std.testing.allocator, "Exa   mple");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("Exa-mple", result);
    }
    {
        const result = try fixSpaces(std.testing.allocator, "   Exa 1 2 2 mple");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("-Exa_1_2_2_mple", result);
    }
}
