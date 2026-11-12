long long *f(long long n, size_t *out_len) {
    size_t count = n > 0 ? (size_t)n : 0;
    long long *result = malloc((count ? count : 1) * sizeof *result);
    if (!result) return NULL;
    for (long long i = 1; i <= n; i++) {
        if (i % 2 == 0) {
            long long x = 1;
            for (long long j = 1; j <= i; j++) x *= j;
            result[i - 1] = x;
        } else {
            result[i - 1] = i * (i + 1) / 2;
        }
    }
    *out_len = count;
    return result;
}
