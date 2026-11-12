test "findMax" {
    try std.testing.expectEqualStrings("string", findMax(&[_][]const u8{ "name", "of", "string" }));
    try std.testing.expectEqualStrings("enam", findMax(&[_][]const u8{ "name", "enam", "game" }));
    try std.testing.expectEqualStrings("aaaaaaa", findMax(&[_][]const u8{ "aaaaaaa", "bb", "cc" }));
    try std.testing.expectEqualStrings("abc", findMax(&[_][]const u8{ "abc", "cba" }));
    try std.testing.expectEqualStrings("footbott", findMax(&[_][]const u8{ "play", "this", "game", "of", "footbott" }));
    try std.testing.expectEqualStrings("gonna", findMax(&[_][]const u8{ "we", "are", "gonna", "rock" }));
    try std.testing.expectEqualStrings("nation", findMax(&[_][]const u8{ "we", "are", "a", "mad", "nation" }));
    try std.testing.expectEqualStrings("this", findMax(&[_][]const u8{ "this", "is", "a", "prrk" }));
}
