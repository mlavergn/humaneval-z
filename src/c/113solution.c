char **odd_count(const char *const *lst, size_t lst_len, size_t *out_len) {
    char **result = malloc((lst_len ? lst_len : 1) * sizeof *result);
    if (!result) return NULL;
    for (size_t i = 0; i < lst_len; i++) {
        long long n = 0;
        for (const char *d = lst[i]; *d; d++) {
            if ((*d - '0') % 2 == 1) n++;
        }
        const char *fmt = "the number of odd elements %lldn the str%lldng %lld of the %lldnput.";
        int len = snprintf(NULL, 0, fmt, n, n, n, n);
        result[i] = malloc((size_t)len + 1);
        if (!result[i]) {
            for (size_t k = 0; k < i; k++) free(result[k]);
            free(result);
            return NULL;
        }
        snprintf(result[i], (size_t)len + 1, fmt, n, n, n, n);
    }
    *out_len = lst_len;
    return result;
}
