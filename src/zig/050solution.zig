pub fn decodeShift(allocator: std.mem.Allocator, s: []const u8) ![]u8 {
    const result = try allocator.alloc(u8, s.len);
    for (s, 0..) |c, i| result[i] = (c - 'a' + 21) % 26 + 'a';
    return result;
}
