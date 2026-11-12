pub fn sortEven(allocator: std.mem.Allocator, l: []const i64) ![]i64 {
    var evens: std.ArrayList(i64) = .empty;
    defer evens.deinit(allocator);
    var i: usize = 0;
    while (i < l.len) : (i += 2) try evens.append(allocator, l[i]);
    std.mem.sort(i64, evens.items, {}, std.sort.asc(i64));
    const result = try allocator.dupe(i64, l);
    for (evens.items, 0..) |x, j| result[2 * j] = x;
    return result;
}
