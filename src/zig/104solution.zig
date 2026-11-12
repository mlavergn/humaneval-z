pub fn uniqueDigits(allocator: std.mem.Allocator, x: []const i64) ![]i64 {
    var result: std.ArrayList(i64) = .empty;
    outer: for (x) |n| {
        var d: i64 = @intCast(@abs(n));
        while (true) {
            if (@rem(d, 2) == 0) continue :outer;
            d = @divTrunc(d, 10);
            if (d == 0) break;
        }
        try result.append(allocator, n);
    }
    std.mem.sort(i64, result.items, {}, std.sort.asc(i64));
    return result.toOwnedSlice(allocator);
}
