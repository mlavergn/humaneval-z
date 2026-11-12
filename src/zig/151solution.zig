pub fn doubleTheDifference(lst: []const f64) i64 {
    var sum: i64 = 0;
    for (lst) |x| {
        if (x > 0 and x == @trunc(x) and @rem(x, 2) != 0) {
            const i: i64 = @intFromFloat(x);
            sum += i * i;
        }
    }
    return sum;
}
