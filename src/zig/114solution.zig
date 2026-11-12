pub fn minsubarraysum(nums: []const i64) i64 {
    var max_sum: i64 = 0;
    var s: i64 = 0;
    for (nums) |num| {
        s = @max(s - num, 0);
        max_sum = @max(max_sum, s);
    }
    if (max_sum == 0) {
        max_sum = std.math.minInt(i64);
        for (nums) |num| max_sum = @max(max_sum, -num);
    }
    return -max_sum;
}
