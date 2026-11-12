pub fn encrypt(allocator: std.mem.Allocator, s: []const u8) ![]u8 {
    const result = try allocator.alloc(u8, s.len);
    for (s, 0..) |c, i| {
        result[i] = if (std.ascii.isLower(c)) (c - 'a' + 2 * 2) % 26 + 'a' else c;
    }
    return result;
}
