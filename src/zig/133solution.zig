pub fn sumSquares(lst: []const f64) i64 {
    var squared: i64 = 0;
    for (lst) |x| {
        const c: i64 = @intFromFloat(@ceil(x));
        squared += c * c;
    }
    return squared;
}
