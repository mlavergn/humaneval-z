pub fn countNums(arr: []const i64) i64 {
    const digitsSum = struct {
        // Sum of digits, where the first digit of a negative number is negative.
        fn f(n: i64) i64 {
            var rest: i64 = @intCast(@abs(n));
            var sum: i64 = 0;
            var first: i64 = 0;
            while (rest > 0) : (rest = @divTrunc(rest, 10)) {
                first = @rem(rest, 10);
                sum += first;
            }
            return if (n < 0) sum - 2 * first else sum;
        }
    }.f;
    var count: i64 = 0;
    for (arr) |x| {
        if (digitsSum(x) > 0) count += 1;
    }
    return count;
}
