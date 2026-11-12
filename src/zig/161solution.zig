pub fn solve(allocator: std.mem.Allocator, s: []const u8) ![]u8 {
    const result = try allocator.dupe(u8, s);
    var has_letter = false;
    for (result) |*c| {
        if (std.ascii.isLower(c.*)) {
            c.* = std.ascii.toUpper(c.*);
            has_letter = true;
        } else if (std.ascii.isUpper(c.*)) {
            c.* = std.ascii.toLower(c.*);
            has_letter = true;
        }
    }
    if (!has_letter) std.mem.reverse(u8, result);
    return result;
}
