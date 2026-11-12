pub fn makeAPile(allocator: std.mem.Allocator, n: i64) ![]i64 {
    const result = try allocator.alloc(i64, @intCast(n));
    for (result, 0..) |*x, i| x.* = n + 2 * @as(i64, @intCast(i));
    return result;
}
