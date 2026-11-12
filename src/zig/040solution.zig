pub fn triplesSumToZero(l: []const i64) bool {
    for (l, 0..) |a, i| {
        for (l[i + 1 ..], i + 1..) |b, j| {
            for (l[j + 1 ..]) |c| {
                if (a + b + c == 0) return true;
            }
        }
    }
    return false;
}
