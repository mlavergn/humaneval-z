pub fn intersperse(allocator: std.mem.Allocator, numbers: []const i64, delimeter: i64) ![]i64 {
    if (numbers.len == 0) return allocator.alloc(i64, 0);
    const result = try allocator.alloc(i64, 2 * numbers.len - 1);
    for (numbers, 0..) |n, i| {
        result[2 * i] = n;
        if (i + 1 < numbers.len) result[2 * i + 1] = delimeter;
    }
    return result;
}
