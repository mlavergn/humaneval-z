char **sorted_list_sum(const char *const *lst, size_t lst_len, size_t *out_len) {
    char **result = malloc((lst_len ? lst_len : 1) * sizeof *result);
    if (!result) return NULL;
    size_t count = 0;
    for (size_t i = 0; i < lst_len; i++) {
        size_t len = strlen(lst[i]);
        if (len % 2 != 0) continue;
        char *copy = malloc(len + 1);
        if (!copy) {
            for (size_t k = 0; k < count; k++) free(result[k]);
            free(result);
            return NULL;
        }
        memcpy(copy, lst[i], len + 1);
        // Insertion sort by length, then alphabetically.
        size_t j = count++;
        while (j > 0 && (strlen(result[j - 1]) > len ||
                         (strlen(result[j - 1]) == len && strcmp(result[j - 1], copy) > 0))) {
            result[j] = result[j - 1];
            j--;
        }
        result[j] = copy;
    }
    *out_len = count;
    return result;
}
