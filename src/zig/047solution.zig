pub fn median(allocator: std.mem.Allocator, l: []const i64) !f64 {
    const sorted = try allocator.dupe(i64, l);
    defer allocator.free(sorted);
    std.mem.sort(i64, sorted, {}, std.sort.asc(i64));
    const mid = sorted.len / 2;
    if (sorted.len % 2 == 1) return @floatFromInt(sorted[mid]);
    return @as(f64, @floatFromInt(sorted[mid - 1] + sorted[mid])) / 2.0;
}
