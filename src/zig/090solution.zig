pub fn nextSmallest(allocator: std.mem.Allocator, lst: []const i64) !?i64 {
    const sorted = try allocator.dupe(i64, lst);
    defer allocator.free(sorted);
    std.mem.sort(i64, sorted, {}, std.sort.asc(i64));
    for (sorted[@min(1, sorted.len)..]) |x| {
        if (x != sorted[0]) return x;
    }
    return null;
}
