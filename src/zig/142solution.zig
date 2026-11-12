pub fn sumSquares(lst: []const i64) i64 {
    var sum: i64 = 0;
    for (lst, 0..) |x, i| {
        if (i % 3 == 0) {
            sum += x * x;
        } else if (i % 4 == 0) {
            sum += x * x * x;
        } else {
            sum += x;
        }
    }
    return sum;
}
