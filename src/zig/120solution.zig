pub fn maximum(allocator: std.mem.Allocator, arr: []const i64, k: i64) ![]i64 {
    const sorted = try allocator.dupe(i64, arr);
    defer allocator.free(sorted);
    std.mem.sort(i64, sorted, {}, std.sort.asc(i64));
    return allocator.dupe(i64, sorted[sorted.len - @as(usize, @intCast(k)) ..]);
}
