pub fn fib4(n: i64) i64 {
    var window = [4]i64{ 0, 0, 2, 0 };
    if (n < 4) return window[@intCast(n)];
    var i: i64 = 4;
    while (i <= n) : (i += 1) {
        const next = window[0] + window[1] + window[2] + window[3];
        window = .{ window[1], window[2], window[3], next };
    }
    return window[3];
}
