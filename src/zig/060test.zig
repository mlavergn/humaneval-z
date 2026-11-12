test "sumToN" {
    try std.testing.expectEqual(1, sumToN(1));
    try std.testing.expectEqual(21, sumToN(6));
    try std.testing.expectEqual(66, sumToN(11));
    try std.testing.expectEqual(465, sumToN(30));
    try std.testing.expectEqual(5050, sumToN(100));
}
