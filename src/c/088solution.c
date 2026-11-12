long long *sort_array(const long long *array, size_t array_len, size_t *out_len) {
    long long *arr = malloc((array_len ? array_len : 1) * sizeof *arr);
    if (!arr) return NULL;
    bool descending = array_len > 0 && (array[0] + array[array_len - 1]) % 2 == 0;
    for (size_t i = 0; i < array_len; i++) {
        size_t j = i;
        while (j > 0 && (descending ? arr[j - 1] < array[i] : arr[j - 1] > array[i])) {
            arr[j] = arr[j - 1];
            j--;
        }
        arr[j] = array[i];
    }
    *out_len = array_len;
    return arr;
}
