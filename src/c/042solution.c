long long *incr_list(const long long *l, size_t l_len, size_t *out_len) {
    long long *result = malloc((l_len ? l_len : 1) * sizeof *result);
    if (!result) return NULL;
    for (size_t i = 0; i < l_len; i++) result[i] = l[i] + 1;
    *out_len = l_len;
    return result;
}
