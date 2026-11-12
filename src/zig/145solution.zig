pub fn orderByPoints(allocator: std.mem.Allocator, nums: []const i64) ![]i64 {
    const result = try allocator.dupe(i64, nums);
    const byDigitSum = struct {
        // Sum of digits, where the first digit of a negative number is negative.
        fn digitsSum(n: i64) i64 {
            var rest: i64 = @intCast(@abs(n));
            var sum: i64 = 0;
            var first: i64 = 0;
            while (rest > 0) : (rest = @divTrunc(rest, 10)) {
                first = @rem(rest, 10);
                sum += first;
            }
            return if (n < 0) sum - 2 * first else sum;
        }
        fn lessThan(_: void, a: i64, b: i64) bool {
            return digitsSum(a) < digitsSum(b);
        }
    };
    // std.mem.sort is stable, so ties keep their original order.
    std.mem.sort(i64, result, {}, byDigitSum.lessThan);
    return result;
}
