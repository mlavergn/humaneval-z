pub fn largestPrimeFactor(n: i64) i64 {
    var m = n;
    var largest: i64 = 1;
    var i: i64 = 2;
    while (i * i <= m) {
        if (@rem(m, i) == 0) {
            largest = i;
            m = @divTrunc(m, i);
        } else {
            i += 1;
        }
    }
    return if (m > 1) @max(largest, m) else largest;
}
