test "decodeCyclic" {
    // decodeCyclic(std.testing.allocator, encodeCyclic(std.testing.allocator, s)) == s for random lowercase strings.
    var prng = std.Random.DefaultPrng.init(42);
    const random = prng.random();
    for (0..100) |_| {
        var buf: [20]u8 = undefined;
        const s = buf[0..random.intRangeLessThan(usize, 10, 20)];
        for (s) |*c| c.* = random.intRangeLessThan(u8, 'a', 'z');
        const encoded = try encodeCyclic(std.testing.allocator, s);
        defer std.testing.allocator.free(encoded);
        const decoded = try decodeCyclic(std.testing.allocator, encoded);
        defer std.testing.allocator.free(decoded);
        try std.testing.expectEqualStrings(s, decoded);
    }
}
