char **by_length(const long long *arr, size_t arr_len, size_t *out_len) {
    static const char *const names[] = {"One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"};
    size_t counts[10] = {0};
    for (size_t i = 0; i < arr_len; i++) {
        if (arr[i] >= 1 && arr[i] <= 9) counts[arr[i]]++;
    }
    char **result = malloc((arr_len ? arr_len : 1) * sizeof *result);
    if (!result) return NULL;
    size_t count = 0;
    for (long long d = 9; d >= 1; d--) {
        for (size_t k = 0; k < counts[d]; k++) {
            result[count] = malloc(strlen(names[d - 1]) + 1);
            if (!result[count]) {
                for (size_t j = 0; j < count; j++) free(result[j]);
                free(result);
                return NULL;
            }
            strcpy(result[count++], names[d - 1]);
        }
    }
    *out_len = count;
    return result;
}
