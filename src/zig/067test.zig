test "fruitDistribution" {
    try std.testing.expectEqual(8, fruitDistribution("5 apples and 6 oranges", 19));
    try std.testing.expectEqual(10, fruitDistribution("5 apples and 6 oranges", 21));
    try std.testing.expectEqual(2, fruitDistribution("0 apples and 1 oranges", 3));
    try std.testing.expectEqual(2, fruitDistribution("1 apples and 0 oranges", 3));
    try std.testing.expectEqual(95, fruitDistribution("2 apples and 3 oranges", 100));
    try std.testing.expectEqual(0, fruitDistribution("2 apples and 3 oranges", 5));
    try std.testing.expectEqual(19, fruitDistribution("1 apples and 100 oranges", 120));
}
