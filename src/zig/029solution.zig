pub fn filterByPrefix(allocator: std.mem.Allocator, strings: []const []const u8, prefix: []const u8) ![][]const u8 {
    var result: std.ArrayList([]const u8) = .empty;
    for (strings) |s| {
        if (std.mem.startsWith(u8, s, prefix)) try result.append(allocator, s);
    }
    return result.toOwnedSlice(allocator);
}
