pub fn getPositive(allocator: std.mem.Allocator, l: []const i64) ![]i64 {
    var result: std.ArrayList(i64) = .empty;
    for (l) |x| {
        if (x > 0) try result.append(allocator, x);
    }
    return result.toOwnedSlice(allocator);
}
