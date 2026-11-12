test "strlen" {
    try std.testing.expectEqual(0, strlen(""));
    try std.testing.expectEqual(1, strlen("x"));
    try std.testing.expectEqual(9, strlen("asdasnakj"));
}
