long long *get_odd_collatz(long long n, size_t *out_len) {
    size_t cap = 16, count = 0;
    long long *result = malloc(cap * sizeof *result);
    if (!result) return NULL;
    for (long long x = n;; x = x % 2 == 0 ? x / 2 : 3 * x + 1) {
        if (x % 2 == 1) {
            if (count == cap) {
                long long *bigger = realloc(result, 2 * cap * sizeof *result);
                if (!bigger) {
                    free(result);
                    return NULL;
                }
                result = bigger;
                cap *= 2;
            }
            // Insertion keeps the result sorted.
            size_t j = count++;
            while (j > 0 && result[j - 1] > x) {
                result[j] = result[j - 1];
                j--;
            }
            result[j] = x;
        }
        if (x <= 1) break;
    }
    *out_len = count;
    return result;
}
