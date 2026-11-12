long long *rolling_max(const long long *numbers, size_t numbers_len, size_t *out_len) {
    long long *result = malloc((numbers_len ? numbers_len : 1) * sizeof *result);
    if (!result) return NULL;
    for (size_t i = 0; i < numbers_len; i++) {
        result[i] = (i == 0 || numbers[i] > result[i - 1]) ? numbers[i] : result[i - 1];
    }
    *out_len = numbers_len;
    return result;
}
