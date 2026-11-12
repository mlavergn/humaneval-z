long long *sort_array(const long long *arr, size_t arr_len, size_t *out_len) {
    long long *result = malloc((arr_len ? arr_len : 1) * sizeof *result);
    if (!result) return NULL;
    for (size_t i = 0; i < arr_len; i++) {
        long long x = arr[i];
        int ones_x = __builtin_popcountll((unsigned long long)llabs(x));
        size_t j = i;
        while (j > 0) {
            long long y = result[j - 1];
            int ones_y = __builtin_popcountll((unsigned long long)llabs(y));
            if (ones_y < ones_x || (ones_y == ones_x && y <= x)) break;
            result[j] = y;
            j--;
        }
        result[j] = x;
    }
    *out_len = arr_len;
    return result;
}
