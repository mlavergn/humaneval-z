pub fn pairsSumToZero(l: []const i64) bool {
    for (l, 0..) |a, i| {
        for (l[i + 1 ..]) |b| {
            if (a + b == 0) return true;
        }
    }
    return false;
}
