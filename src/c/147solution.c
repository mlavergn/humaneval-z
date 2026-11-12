long long get_max_triples(long long n) {
    // a[i] = i*i - i + 1; count the triples whose sum is a multiple of 3.
    long long ans = 0;
    for (long long i = 1; i <= n; i++) {
        for (long long j = i + 1; j <= n; j++) {
            for (long long k = j + 1; k <= n; k++) {
                if ((i * i - i + 1 + j * j - j + 1 + k * k - k + 1) % 3 == 0) ans++;
            }
        }
    }
    return ans;
}
