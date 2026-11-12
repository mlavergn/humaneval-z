pub fn moveOneBall(allocator: std.mem.Allocator, arr: []const i64) !bool {
    if (arr.len == 0) return true;
    const sorted = try allocator.dupe(i64, arr);
    defer allocator.free(sorted);
    std.mem.sort(i64, sorted, {}, std.sort.asc(i64));
    const min_index = std.mem.findScalar(i64, arr, sorted[0]).?;
    for (sorted, 0..) |x, i| {
        if (arr[(min_index + i) % arr.len] != x) return false;
    }
    return true;
}
