test "specialFactorial" {
    try std.testing.expectEqual(288, specialFactorial(4));
    try std.testing.expectEqual(34560, specialFactorial(5));
    try std.testing.expectEqual(125411328000, specialFactorial(7));
    try std.testing.expectEqual(1, specialFactorial(1));
}
