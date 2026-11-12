pub fn derivative(allocator: std.mem.Allocator, xs: []const i64) ![]i64 {
    if (xs.len == 0) return allocator.alloc(i64, 0);
    const result = try allocator.alloc(i64, xs.len - 1);
    for (result, 1..) |*y, i| y.* = xs[i] * @as(i64, @intCast(i));
    return result;
}
