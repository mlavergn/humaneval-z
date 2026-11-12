pub fn iscube(a: i64) bool {
    const abs: i64 = @intCast(@abs(a));
    const root: i64 = @intFromFloat(@round(std.math.cbrt(@as(f64, @floatFromInt(abs)))));
    return root * root * root == abs;
}
