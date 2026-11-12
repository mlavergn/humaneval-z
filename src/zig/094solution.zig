pub fn skjkasdkd(lst: []const i64) i64 {
    const isPrime = struct {
        fn f(n: i64) bool {
            if (n < 2) return false;
            var i: i64 = 2;
            while (i * i <= n) : (i += 1) {
                if (@rem(n, i) == 0) return false;
            }
            return true;
        }
    }.f;
    var maxx: i64 = 0;
    for (lst) |x| {
        if (x > maxx and isPrime(x)) maxx = x;
    }
    var sum: i64 = 0;
    while (maxx > 0) : (maxx = @divTrunc(maxx, 10)) sum += @rem(maxx, 10);
    return sum;
}
