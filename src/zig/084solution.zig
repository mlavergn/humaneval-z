pub fn solve(allocator: std.mem.Allocator, n: i64) ![]u8 {
    var sum: i64 = 0;
    var x: i64 = @intCast(@abs(n));
    while (x > 0) : (x = @divTrunc(x, 10)) sum += @rem(x, 10);
    return std.fmt.allocPrint(allocator, "{b}", .{sum});
}
