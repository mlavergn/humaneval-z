double *tri(long long n, size_t *out_len) {
    size_t len = (size_t)n + 1;
    double *result = malloc(len * sizeof *result);
    if (!result) return NULL;
    result[0] = 1;
    if (len > 1) result[1] = 3;
    for (size_t i = 2; i < len; i++) {
        result[i] = i % 2 == 0 ? (double)i / 2 + 1 : result[i - 1] + result[i - 2] + ((double)i + 3) / 2;
    }
    *out_len = len;
    return result;
}
