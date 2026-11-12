long long *factorize(long long n, size_t *out_len) {
    long long *fact = malloc(64 * sizeof *fact);
    if (!fact) return NULL;
    size_t count = 0;
    for (long long i = 2; i * i <= n;) {
        if (n % i == 0) {
            fact[count++] = i;
            n /= i;
        } else {
            i++;
        }
    }
    if (n > 1) fact[count++] = n;
    *out_len = count;
    return fact;
}
