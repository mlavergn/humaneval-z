test "add" {
    try std.testing.expectEqual(1, add(0, 1));
    try std.testing.expectEqual(1, add(1, 0));
    try std.testing.expectEqual(5, add(2, 3));
    try std.testing.expectEqual(12, add(5, 7));
    try std.testing.expectEqual(12, add(7, 5));
    var prng = std.Random.DefaultPrng.init(42);
    const random = prng.random();
    for (0..100) |_| {
        const x = random.intRangeLessThan(i64, 0, 1000);
        const y = random.intRangeLessThan(i64, 0, 1000);
        try std.testing.expectEqual(x + y, add(x, y));
    }
}
