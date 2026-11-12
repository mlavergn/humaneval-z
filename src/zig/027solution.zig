pub fn flipCase(allocator: std.mem.Allocator, str: []const u8) ![]u8 {
    const result = try allocator.alloc(u8, str.len);
    for (str, 0..) |c, i| {
        result[i] = if (std.ascii.isUpper(c))
            std.ascii.toLower(c)
        else if (std.ascii.isLower(c))
            std.ascii.toUpper(c)
        else
            c;
    }
    return result;
}
