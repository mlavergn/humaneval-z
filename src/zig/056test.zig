test "correctBracketing" {
    try std.testing.expect(correctBracketing("<>"));
    try std.testing.expect(correctBracketing("<<><>>"));
    try std.testing.expect(correctBracketing("<><><<><>><>"));
    try std.testing.expect(correctBracketing("<><><<<><><>><>><<><><<>>>"));
    try std.testing.expect(!correctBracketing("<<<><>>>>"));
    try std.testing.expect(!correctBracketing("><<>"));
    try std.testing.expect(!correctBracketing("<"));
    try std.testing.expect(!correctBracketing("<<<<"));
    try std.testing.expect(!correctBracketing(">"));
    try std.testing.expect(!correctBracketing("<<>"));
    try std.testing.expect(!correctBracketing("<><><<><>><>><<>"));
    try std.testing.expect(!correctBracketing("<><><<><>><>>><>"));
}
