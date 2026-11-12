pub fn removeVowels(allocator: std.mem.Allocator, text: []const u8) ![]u8 {
    var result: std.ArrayList(u8) = .empty;
    for (text) |c| {
        if (std.mem.findScalar(u8, "aeiouAEIOU", c) == null) try result.append(allocator, c);
    }
    return result.toOwnedSlice(allocator);
}
