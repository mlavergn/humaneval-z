pub fn antiShuffle(allocator: std.mem.Allocator, s: []const u8) ![]u8 {
    var result: std.ArrayList(u8) = .empty;
    var words = std.mem.tokenizeAny(u8, s, " \t\r\n");
    while (words.next()) |word| {
        if (result.items.len != 0) try result.append(allocator, ' ');
        const start = result.items.len;
        try result.appendSlice(allocator, word);
        std.mem.sort(u8, result.items[start..], {}, std.sort.asc(u8));
    }
    return result.toOwnedSlice(allocator);
}
