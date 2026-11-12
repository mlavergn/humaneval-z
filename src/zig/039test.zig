test "primeFib" {
    try std.testing.expectEqual(2, primeFib(1));
    try std.testing.expectEqual(3, primeFib(2));
    try std.testing.expectEqual(5, primeFib(3));
    try std.testing.expectEqual(13, primeFib(4));
    try std.testing.expectEqual(89, primeFib(5));
    try std.testing.expectEqual(233, primeFib(6));
    try std.testing.expectEqual(1597, primeFib(7));
    try std.testing.expectEqual(28657, primeFib(8));
    try std.testing.expectEqual(514229, primeFib(9));
    try std.testing.expectEqual(433494437, primeFib(10));
}
