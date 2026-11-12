pub fn pluck(arr: []const i64) ?[2]i64 {
    var result: ?[2]i64 = null;
    for (arr, 0..) |x, i| {
        if (@rem(x, 2) != 0) continue;
        if (result == null or x < result.?[0]) result = .{ x, @intCast(i) };
    }
    return result;
}
