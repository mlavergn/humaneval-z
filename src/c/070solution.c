long long *strange_sort_list(const long long *lst, size_t lst_len, size_t *out_len) {
    long long *sorted = malloc((lst_len ? lst_len : 1) * sizeof *sorted);
    long long *result = malloc((lst_len ? lst_len : 1) * sizeof *result);
    if (!sorted || !result) {
        free(sorted);
        free(result);
        return NULL;
    }
    for (size_t i = 0; i < lst_len; i++) {
        size_t j = i;
        while (j > 0 && sorted[j - 1] > lst[i]) {
            sorted[j] = sorted[j - 1];
            j--;
        }
        sorted[j] = lst[i];
    }
    size_t lo = 0, hi = lst_len;
    for (size_t i = 0; i < lst_len; i++) result[i] = i % 2 == 0 ? sorted[lo++] : sorted[--hi];
    free(sorted);
    *out_len = lst_len;
    return result;
}
