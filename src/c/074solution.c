char **total_match(const char *const *lst1, size_t lst1_len, const char *const *lst2, size_t lst2_len, size_t *out_len) {
    size_t numchar1 = 0, numchar2 = 0;
    for (size_t i = 0; i < lst1_len; i++) numchar1 += strlen(lst1[i]);
    for (size_t i = 0; i < lst2_len; i++) numchar2 += strlen(lst2[i]);
    const char *const *lst = numchar1 <= numchar2 ? lst1 : lst2;
    size_t n = numchar1 <= numchar2 ? lst1_len : lst2_len;
    char **result = malloc((n ? n : 1) * sizeof *result);
    if (!result) return NULL;
    for (size_t i = 0; i < n; i++) {
        size_t len = strlen(lst[i]);
        result[i] = malloc(len + 1);
        if (!result[i]) {
            for (size_t k = 0; k < i; k++) free(result[k]);
            free(result);
            return NULL;
        }
        memcpy(result[i], lst[i], len + 1);
    }
    *out_len = n;
    return result;
}
