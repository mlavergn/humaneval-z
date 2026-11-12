pub fn getOddCollatz(allocator: std.mem.Allocator, n: i64) ![]i64 {
    var result: std.ArrayList(i64) = .empty;
    var x = n;
    if (@rem(x, 2) == 1) try result.append(allocator, x);
    while (x > 1) {
        x = if (@rem(x, 2) == 0) @divTrunc(x, 2) else 3 * x + 1;
        if (@rem(x, 2) == 1) try result.append(allocator, x);
    }
    std.mem.sort(i64, result.items, {}, std.sort.asc(i64));
    return result.toOwnedSlice(allocator);
}
