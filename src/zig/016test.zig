test "countDistinctCharacters" {
    try std.testing.expectEqual(0, countDistinctCharacters(""));
    try std.testing.expectEqual(5, countDistinctCharacters("abcde"));
    try std.testing.expectEqual(5, countDistinctCharacters("abcde" ++ "cade" ++ "CADE"));
    try std.testing.expectEqual(1, countDistinctCharacters("aaaaAAAAaaaa"));
    try std.testing.expectEqual(5, countDistinctCharacters("Jerry jERRY JeRRRY"));
}
