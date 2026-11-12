pub fn histogram(allocator: std.mem.Allocator, test_str: []const u8) ![]LetterCount {
    var counts: [256]i64 = @splat(0);
    var words = std.mem.tokenizeAny(u8, test_str, " \t\r\n");
    while (words.next()) |word| counts[word[0]] += 1;
    const max = std.mem.max(i64, &counts);
    var result: std.ArrayList(LetterCount) = .empty;
    if (max == 0) return result.toOwnedSlice(allocator);
    for (counts, 0..) |count, letter| {
        if (count == max) try result.append(allocator, .{ .letter = @intCast(letter), .count = count });
    }
    return result.toOwnedSlice(allocator);
}
