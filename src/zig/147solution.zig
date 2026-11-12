pub fn getMaxTriples(allocator: std.mem.Allocator, n: i64) !i64 {
    const a = try allocator.alloc(i64, @intCast(n));
    defer allocator.free(a);
    for (a, 1..) |*x, i| {
        const ii: i64 = @intCast(i);
        x.* = ii * ii - ii + 1;
    }
    var ans: i64 = 0;
    for (0..a.len) |i| {
        for (i + 1..a.len) |j| {
            for (j + 1..a.len) |k| {
                if (@rem(a[i] + a[j] + a[k], 3) == 0) ans += 1;
            }
        }
    }
    return ans;
}
