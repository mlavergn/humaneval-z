long long x_or_y(long long n, long long x, long long y) {
    if (n < 2) return y;
    for (long long i = 2; i * i <= n; i++) {
        if (n % i == 0) return y;
    }
    return x;
}
