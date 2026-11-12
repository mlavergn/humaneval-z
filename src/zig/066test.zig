test "digitsum" {
    try std.testing.expectEqual(0, digitsum(""));
    try std.testing.expectEqual(131, digitsum("abAB"));
    try std.testing.expectEqual(67, digitsum("abcCd"));
    try std.testing.expectEqual(69, digitsum("helloE"));
    try std.testing.expectEqual(131, digitsum("woArBld"));
    try std.testing.expectEqual(153, digitsum("aAaaaXa"));
    try std.testing.expectEqual(151, digitsum(" How are yOu?"));
    try std.testing.expectEqual(327, digitsum("You arE Very Smart"));
}
