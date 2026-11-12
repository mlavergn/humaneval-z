test "countUpper" {
    try std.testing.expectEqual(1, countUpper("aBCdEf"));
    try std.testing.expectEqual(0, countUpper("abcdefg"));
    try std.testing.expectEqual(0, countUpper("dBBE"));
    try std.testing.expectEqual(0, countUpper("B"));
    try std.testing.expectEqual(1, countUpper("U"));
    try std.testing.expectEqual(0, countUpper(""));
    try std.testing.expectEqual(2, countUpper("EEEE"));
}
