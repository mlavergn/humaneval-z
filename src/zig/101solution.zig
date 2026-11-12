pub fn wordsString(allocator: std.mem.Allocator, s: []const u8) ![][]const u8 {
    var result: std.ArrayList([]const u8) = .empty;
    var words = std.mem.tokenizeAny(u8, s, ", \t\r\n");
    while (words.next()) |word| try result.append(allocator, word);
    return result.toOwnedSlice(allocator);
}
