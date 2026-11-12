long long *intersperse(const long long *numbers, size_t numbers_len, long long delimeter, size_t *out_len) {
    size_t n = numbers_len ? 2 * numbers_len - 1 : 0;
    long long *result = malloc((n ? n : 1) * sizeof *result);
    if (!result) return NULL;
    for (size_t i = 0; i < numbers_len; i++) {
        result[2 * i] = numbers[i];
        if (i + 1 < numbers_len) result[2 * i + 1] = delimeter;
    }
    *out_len = n;
    return result;
}
