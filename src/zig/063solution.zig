pub fn fibfib(n: i64) i64 {
    var window = [3]i64{ 0, 0, 1 };
    if (n <= 0) return 0;
    if (n < 3) return window[@intCast(n)];
    var i: i64 = 3;
    while (i <= n) : (i += 1) {
        const next = window[0] + window[1] + window[2];
        window = .{ window[1], window[2], next };
    }
    return window[2];
}
