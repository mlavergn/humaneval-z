pub fn factorize(allocator: std.mem.Allocator, n: i64) ![]i64 {
    var fact: std.ArrayList(i64) = .empty;
    var m = n;
    var i: i64 = 2;
    while (i * i <= m) {
        if (@rem(m, i) == 0) {
            try fact.append(allocator, i);
            m = @divTrunc(m, i);
        } else {
            i += 1;
        }
    }
    if (m > 1) try fact.append(allocator, m);
    return fact.toOwnedSlice(allocator);
}
