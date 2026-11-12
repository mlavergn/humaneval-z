test "isBored" {
    try std.testing.expectEqual(0, isBored("Hello world"));
    try std.testing.expectEqual(0, isBored("Is the sky blue?"));
    try std.testing.expectEqual(1, isBored("I love It !"));
    try std.testing.expectEqual(0, isBored("bIt"));
    try std.testing.expectEqual(2, isBored("I feel good today. I will be productive. will kill It"));
    try std.testing.expectEqual(0, isBored("You and I are going for a walk"));
}
