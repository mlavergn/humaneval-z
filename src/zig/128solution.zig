pub fn prodSigns(arr: []const i64) ?i64 {
    if (arr.len == 0) return null;
    var sign: i64 = 1;
    var sum: i64 = 0;
    for (arr) |x| {
        if (x == 0) return 0;
        if (x < 0) sign = -sign;
        sum += @intCast(@abs(x));
    }
    return sign * sum;
}
