test "getClosestVowel" {
    try std.testing.expectEqualStrings("u", getClosestVowel("yogurt"));
    try std.testing.expectEqualStrings("u", getClosestVowel("full"));
    try std.testing.expectEqualStrings("", getClosestVowel("easy"));
    try std.testing.expectEqualStrings("", getClosestVowel("eAsy"));
    try std.testing.expectEqualStrings("", getClosestVowel("ali"));
    try std.testing.expectEqualStrings("a", getClosestVowel("bad"));
    try std.testing.expectEqualStrings("o", getClosestVowel("most"));
    try std.testing.expectEqualStrings("", getClosestVowel("ab"));
    try std.testing.expectEqualStrings("", getClosestVowel("ba"));
    try std.testing.expectEqualStrings("", getClosestVowel("quick"));
    try std.testing.expectEqualStrings("i", getClosestVowel("anime"));
    try std.testing.expectEqualStrings("", getClosestVowel("Asia"));
    try std.testing.expectEqualStrings("o", getClosestVowel("Above"));
}
