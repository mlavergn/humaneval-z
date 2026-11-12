long long *count_up_to(long long n, size_t *out_len) {
    size_t cap = n > 2 ? (size_t)n : 1;
    long long *primes = malloc(cap * sizeof *primes);
    if (!primes) return NULL;
    size_t count = 0;
    for (long long i = 2; i < n; i++) {
        bool is_prime = true;
        for (size_t k = 0; k < count && primes[k] * primes[k] <= i; k++) {
            if (i % primes[k] == 0) {
                is_prime = false;
                break;
            }
        }
        if (is_prime) primes[count++] = i;
    }
    *out_len = count;
    return primes;
}
