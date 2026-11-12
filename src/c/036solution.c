long long fizz_buzz(long long n) {
    long long ans = 0;
    for (long long i = 0; i < n; i++) {
        if (i % 11 != 0 && i % 13 != 0) continue;
        for (long long x = i; x > 0; x /= 10) {
            if (x % 10 == 7) ans++;
        }
    }
    return ans;
}
