pub fn unique(allocator: std.mem.Allocator, l: []const i64) ![]i64 {
    const sorted = try allocator.dupe(i64, l);
    defer allocator.free(sorted);
    std.mem.sort(i64, sorted, {}, std.sort.asc(i64));
    var result: std.ArrayList(i64) = .empty;
    for (sorted, 0..) |x, i| {
        if (i == 0 or x != sorted[i - 1]) try result.append(allocator, x);
    }
    return result.toOwnedSlice(allocator);
}
