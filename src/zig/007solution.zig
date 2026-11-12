pub fn filterBySubstring(allocator: std.mem.Allocator, string_list: []const []const u8, substring: []const u8) ![][]const u8 {
    var result: std.ArrayList([]const u8) = .empty;
    for (string_list) |x| {
        if (std.mem.find(u8, x, substring) != null) try result.append(allocator, x);
    }
    return result.toOwnedSlice(allocator);
}
