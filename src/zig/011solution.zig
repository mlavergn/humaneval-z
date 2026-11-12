pub fn stringXor(allocator: std.mem.Allocator, a: []const u8, b: []const u8) ![]u8 {
    const result = try allocator.alloc(u8, a.len);
    for (a, b, 0..) |x, y, i| {
        result[i] = if (x == y) '0' else '1';
    }
    return result;
}
