pub fn splitWords(allocator: std.mem.Allocator, txt: []const u8) !SplitResult {
    if (std.mem.findScalar(u8, txt, ' ') != null or std.mem.findScalar(u8, txt, ',') != null) {
        var result: std.ArrayList([]const u8) = .empty;
        if (std.mem.findScalar(u8, txt, ' ') != null) {
            var words = std.mem.tokenizeAny(u8, txt, " \t\r\n");
            while (words.next()) |word| try result.append(allocator, word);
        } else {
            var words = std.mem.splitScalar(u8, txt, ',');
            while (words.next()) |word| try result.append(allocator, word);
        }
        return .{ .words = try result.toOwnedSlice(allocator) };
    }
    var count: i64 = 0;
    for (txt) |c| {
        if (std.ascii.isLower(c) and (c - 'a') % 2 == 1) count += 1;
    }
    return .{ .count = count };
}
