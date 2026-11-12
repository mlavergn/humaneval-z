test "bf" {
    {
        const result = bf("Jupiter", "Neptune");
        try std.testing.expectEqualDeep(&[_][]const u8{ "Saturn", "Uranus" }, result);
    }
    {
        const result = bf("Earth", "Mercury");
        try std.testing.expectEqualDeep(&[_][]const u8{ "Venus" }, result);
    }
    {
        const result = bf("Mercury", "Uranus");
        try std.testing.expectEqualDeep(&[_][]const u8{ "Venus", "Earth", "Mars", "Jupiter", "Saturn" }, result);
    }
    {
        const result = bf("Neptune", "Venus");
        try std.testing.expectEqualDeep(&[_][]const u8{ "Earth", "Mars", "Jupiter", "Saturn", "Uranus" }, result);
    }
    {
        const result = bf("Earth", "Earth");
        try std.testing.expectEqualDeep(&[_][]const u8{}, result);
    }
    {
        const result = bf("Mars", "Earth");
        try std.testing.expectEqualDeep(&[_][]const u8{}, result);
    }
    {
        const result = bf("Jupiter", "Makemake");
        try std.testing.expectEqualDeep(&[_][]const u8{}, result);
    }
}
