pub fn intersection(interval1: [2]i64, interval2: [2]i64) []const u8 {
    const isPrime = struct {
        fn f(num: i64) bool {
            if (num < 2) return false;
            var i: i64 = 2;
            while (i * i <= num) : (i += 1) {
                if (@rem(num, i) == 0) return false;
            }
            return true;
        }
    }.f;
    const l = @max(interval1[0], interval2[0]);
    const r = @min(interval1[1], interval2[1]);
    return if (isPrime(r - l)) "YES" else "NO";
}
