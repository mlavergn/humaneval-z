pub fn f(allocator: std.mem.Allocator, n: i64) ![]i64 {
    var result: std.ArrayList(i64) = .empty;
    var i: i64 = 1;
    while (i <= n) : (i += 1) {
        if (@rem(i, 2) == 0) {
            var x: i64 = 1;
            var j: i64 = 1;
            while (j <= i) : (j += 1) x *= j;
            try result.append(allocator, x);
        } else {
            try result.append(allocator, @divTrunc(i * (i + 1), 2));
        }
    }
    return result.toOwnedSlice(allocator);
}
