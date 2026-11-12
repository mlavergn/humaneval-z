test "digits" {
    try std.testing.expectEqual(5, digits(5));
    try std.testing.expectEqual(5, digits(54));
    try std.testing.expectEqual(1, digits(120));
    try std.testing.expectEqual(5, digits(5014));
    try std.testing.expectEqual(315, digits(98765));
    try std.testing.expectEqual(2625, digits(5576543));
    try std.testing.expectEqual(0, digits(2468));
}
