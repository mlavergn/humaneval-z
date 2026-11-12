pub fn sumToN(n: i64) i64 {
    if (n <= 0) return 0;
    return @divTrunc(n * (n + 1), 2);
}
