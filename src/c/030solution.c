long long *get_positive(const long long *l, size_t l_len, size_t *out_len) {
    long long *result = malloc((l_len ? l_len : 1) * sizeof *result);
    if (!result) return NULL;
    size_t count = 0;
    for (size_t i = 0; i < l_len; i++) {
        if (l[i] > 0) result[count++] = l[i];
    }
    *out_len = count;
    return result;
}
