pub fn common(allocator: std.mem.Allocator, l1: []const i64, l2: []const i64) ![]i64 {
    var result: std.ArrayList(i64) = .empty;
    for (l1) |e| {
        if (std.mem.findScalar(i64, l2, e) != null and std.mem.findScalar(i64, result.items, e) == null) {
            try result.append(allocator, e);
        }
    }
    std.mem.sort(i64, result.items, {}, std.sort.asc(i64));
    return result.toOwnedSlice(allocator);
}
