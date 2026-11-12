pub fn largestDivisor(n: i64) i64 {
    var i = n - 1;
    while (i > 0) : (i -= 1) {
        if (@rem(n, i) == 0) return i;
    }
    return 0;
}
