long long *make_a_pile(long long n, size_t *out_len) {
    size_t count = n > 0 ? (size_t)n : 0;
    long long *result = malloc((count ? count : 1) * sizeof *result);
    if (!result) return NULL;
    for (size_t i = 0; i < count; i++) result[i] = n + 2 * (long long)i;
    *out_len = count;
    return result;
}
