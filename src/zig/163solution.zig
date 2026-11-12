pub fn generateIntegers(allocator: std.mem.Allocator, a: i64, b: i64) ![]i64 {
    const lower = @max(2, @min(a, b));
    const upper = @min(8, @max(a, b));
    var result: std.ArrayList(i64) = .empty;
    var i = lower;
    while (i <= upper) : (i += 1) {
        if (@rem(i, 2) == 0) try result.append(allocator, i);
    }
    return result.toOwnedSlice(allocator);
}
