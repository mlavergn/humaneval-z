pub fn isMultiplyPrime(a: i64) bool {
    const isPrime = struct {
        fn f(n: i64) bool {
            var i: i64 = 2;
            while (i * i <= n) : (i += 1) {
                if (@rem(n, i) == 0) return false;
            }
            return true;
        }
    }.f;
    var i: i64 = 2;
    while (i < 101) : (i += 1) {
        if (!isPrime(i)) continue;
        var j: i64 = 2;
        while (j < 101) : (j += 1) {
            if (!isPrime(j)) continue;
            var k: i64 = 2;
            while (k < 101) : (k += 1) {
                if (!isPrime(k)) continue;
                if (i * j * k == a) return true;
            }
        }
    }
    return false;
}
