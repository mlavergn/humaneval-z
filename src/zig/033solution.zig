pub fn sortThird(allocator: std.mem.Allocator, l: []const i64) ![]i64 {
    var thirds: std.ArrayList(i64) = .empty;
    defer thirds.deinit(allocator);
    var i: usize = 0;
    while (i < l.len) : (i += 3) try thirds.append(allocator, l[i]);
    std.mem.sort(i64, thirds.items, {}, std.sort.asc(i64));
    const result = try allocator.dupe(i64, l);
    for (thirds.items, 0..) |x, j| result[3 * j] = x;
    return result;
}
