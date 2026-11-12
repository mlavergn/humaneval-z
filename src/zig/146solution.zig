pub fn specialfilter(nums: []const i64) i64 {
    var count: i64 = 0;
    for (nums) |num| {
        if (num <= 10) continue;
        const last = @rem(num, 10);
        var first = num;
        while (first >= 10) first = @divTrunc(first, 10);
        if (@rem(first, 2) == 1 and @rem(last, 2) == 1) count += 1;
    }
    return count;
}
