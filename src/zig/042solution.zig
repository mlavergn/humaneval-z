pub fn incrList(allocator: std.mem.Allocator, l: []const i64) ![]i64 {
    const result = try allocator.alloc(i64, l.len);
    for (l, 0..) |x, i| result[i] = x + 1;
    return result;
}
