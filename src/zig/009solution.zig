pub fn rollingMax(allocator: std.mem.Allocator, numbers: []const i64) ![]i64 {
    const result = try allocator.alloc(i64, numbers.len);
    for (numbers, 0..) |n, i| {
        result[i] = if (i == 0) n else @max(result[i - 1], n);
    }
    return result;
}
