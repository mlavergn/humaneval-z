pub fn tri(allocator: std.mem.Allocator, n: i64) ![]f64 {
    const len: usize = @intCast(n + 1);
    const result = try allocator.alloc(f64, len);
    result[0] = 1;
    if (len == 1) return result;
    result[1] = 3;
    for (2..len) |i| {
        const fi: f64 = @floatFromInt(i);
        result[i] = if (i % 2 == 0)
            fi / 2 + 1
        else
            result[i - 1] + result[i - 2] + (fi + 3) / 2;
    }
    return result;
}
