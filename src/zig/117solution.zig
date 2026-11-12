pub fn selectWords(allocator: std.mem.Allocator, s: []const u8, n: i64) ![][]const u8 {
    var result: std.ArrayList([]const u8) = .empty;
    var words = std.mem.tokenizeAny(u8, s, " \t\r\n");
    while (words.next()) |word| {
        var n_consonants: i64 = 0;
        for (word) |c| {
            if (std.mem.findScalar(u8, "aeiou", std.ascii.toLower(c)) == null) n_consonants += 1;
        }
        if (n_consonants == n) try result.append(allocator, word);
    }
    return result.toOwnedSlice(allocator);
}
