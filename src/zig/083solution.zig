pub fn startsOneEnds(n: i64) i64 {
    if (n == 1) return 1;
    return 18 * std.math.pow(i64, 10, n - 2);
}
