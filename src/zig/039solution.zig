pub fn primeFib(n: i64) i64 {
    const isPrime = struct {
        fn f(p: i64) bool {
            if (p < 2) return false;
            var i: i64 = 2;
            while (i * i <= p) : (i += 1) {
                if (@rem(p, i) == 0) return false;
            }
            return true;
        }
    }.f;
    var remaining = n;
    var a: i64 = 0;
    var b: i64 = 1;
    while (true) {
        const next = a + b;
        a = b;
        b = next;
        if (isPrime(b)) remaining -= 1;
        if (remaining == 0) return b;
    }
}
