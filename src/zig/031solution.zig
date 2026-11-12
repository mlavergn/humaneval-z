pub fn isPrime(n: i64) bool {
    if (n <= 1) return false;
    if (n == 2) return true;
    if (@rem(n, 2) == 0) return false;
    var i: i64 = 3;
    while (i * i <= n) : (i += 2) {
        if (@rem(n, i) == 0) return false;
    }
    return true;
}
