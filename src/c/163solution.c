long long *generate_integers(long long a, long long b, size_t *out_len) {
    long long lower = a < b ? a : b, upper = a < b ? b : a;
    if (lower < 2) lower = 2;
    if (upper > 8) upper = 8;
    long long *result = malloc(4 * sizeof *result);
    if (!result) return NULL;
    size_t count = 0;
    for (long long i = lower; i <= upper; i++) {
        if (i % 2 == 0) result[count++] = i;
    }
    *out_len = count;
    return result;
}
