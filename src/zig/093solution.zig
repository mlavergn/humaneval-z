pub fn encode(allocator: std.mem.Allocator, message: []const u8) ![]u8 {
    const result = try allocator.alloc(u8, message.len);
    for (message, 0..) |c, i| {
        var swapped = c;
        if (std.ascii.isLower(c)) {
            swapped = std.ascii.toUpper(c);
        } else if (std.ascii.isUpper(c)) {
            swapped = std.ascii.toLower(c);
        }
        if (std.mem.findScalar(u8, "aeiouAEIOU", swapped) != null) swapped += 2;
        result[i] = swapped;
    }
    return result;
}
