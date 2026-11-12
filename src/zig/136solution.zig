pub fn largestSmallestIntegers(lst: []const i64) [2]?i64 {
    var largest_negative: ?i64 = null;
    var smallest_positive: ?i64 = null;
    for (lst) |x| {
        if (x < 0 and (largest_negative == null or x > largest_negative.?)) largest_negative = x;
        if (x > 0 and (smallest_positive == null or x < smallest_positive.?)) smallest_positive = x;
    }
    return .{ largest_negative, smallest_positive };
}
