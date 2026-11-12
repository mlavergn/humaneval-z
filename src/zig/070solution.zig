pub fn strangeSortList(allocator: std.mem.Allocator, lst: []const i64) ![]i64 {
    const sorted = try allocator.dupe(i64, lst);
    defer allocator.free(sorted);
    std.mem.sort(i64, sorted, {}, std.sort.asc(i64));
    const result = try allocator.alloc(i64, lst.len);
    var lo: usize = 0;
    var hi: usize = sorted.len;
    for (result, 0..) |*x, i| {
        if (i % 2 == 0) {
            x.* = sorted[lo];
            lo += 1;
        } else {
            hi -= 1;
            x.* = sorted[hi];
        }
    }
    return result;
}
