long long *maximum(const long long *arr, size_t arr_len, long long k, size_t *out_len) {
    long long *sorted = malloc((arr_len ? arr_len : 1) * sizeof *sorted);
    if (!sorted) return NULL;
    for (size_t i = 0; i < arr_len; i++) {
        size_t j = i;
        while (j > 0 && sorted[j - 1] > arr[i]) {
            sorted[j] = sorted[j - 1];
            j--;
        }
        sorted[j] = arr[i];
    }
    size_t count = (size_t)k;
    memmove(sorted, sorted + arr_len - count, count * sizeof *sorted);
    *out_len = count;
    return sorted;
}
