pub fn byLength(allocator: std.mem.Allocator, arr: []const i64) ![][]const u8 {
    const names = [_][]const u8{ "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine" };
    const sorted = try allocator.dupe(i64, arr);
    defer allocator.free(sorted);
    std.mem.sort(i64, sorted, {}, std.sort.desc(i64));
    var result: std.ArrayList([]const u8) = .empty;
    for (sorted) |x| {
        if (x >= 1 and x <= 9) try result.append(allocator, names[@intCast(x - 1)]);
    }
    return result.toOwnedSlice(allocator);
}
