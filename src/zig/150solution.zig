pub fn xOrY(n: i64, x: i64, y: i64) i64 {
    if (n < 2) return y;
    var i: i64 = 2;
    while (i * i <= n) : (i += 1) {
        if (@rem(n, i) == 0) return y;
    }
    return x;
}
