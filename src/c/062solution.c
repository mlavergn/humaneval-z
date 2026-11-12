long long *derivative(const long long *xs, size_t xs_len, size_t *out_len) {
    size_t n = xs_len ? xs_len - 1 : 0;
    long long *result = malloc((n ? n : 1) * sizeof *result);
    if (!result) return NULL;
    for (size_t i = 1; i < xs_len; i++) result[i - 1] = xs[i] * (long long)i;
    *out_len = n;
    return result;
}
