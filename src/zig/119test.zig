test "matchParens" {
    try std.testing.expectEqualStrings("Yes", matchParens(&[_][]const u8{ "()(", ")" }));
    try std.testing.expectEqualStrings("No", matchParens(&[_][]const u8{ ")", ")" }));
    try std.testing.expectEqualStrings("No", matchParens(&[_][]const u8{ "(()(())", "())())" }));
    try std.testing.expectEqualStrings("Yes", matchParens(&[_][]const u8{ ")())", "(()()(" }));
    try std.testing.expectEqualStrings("Yes", matchParens(&[_][]const u8{ "(())))", "(()())((" }));
    try std.testing.expectEqualStrings("No", matchParens(&[_][]const u8{ "()", "())" }));
    try std.testing.expectEqualStrings("Yes", matchParens(&[_][]const u8{ "(()(", "()))()" }));
    try std.testing.expectEqualStrings("No", matchParens(&[_][]const u8{ "((((", "((())" }));
    try std.testing.expectEqualStrings("No", matchParens(&[_][]const u8{ ")(()", "(()(" }));
    try std.testing.expectEqualStrings("No", matchParens(&[_][]const u8{ ")(", ")(" }));
    try std.testing.expectEqualStrings("Yes", matchParens(&[_][]const u8{ "(", ")" }));
    try std.testing.expectEqualStrings("Yes", matchParens(&[_][]const u8{ ")", "(" }));
}
