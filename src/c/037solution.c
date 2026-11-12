long long *sort_even(const long long *l, size_t l_len, size_t *out_len) {
    long long *result = malloc((l_len ? l_len : 1) * sizeof *result);
    if (!result) return NULL;
    if (l_len) memcpy(result, l, l_len * sizeof *l);
    // Insertion sort over the even indices.
    for (size_t i = 2; i < l_len; i += 2) {
        long long x = result[i];
        size_t j = i;
        while (j >= 2 && result[j - 2] > x) {
            result[j] = result[j - 2];
            j -= 2;
        }
        result[j] = x;
    }
    *out_len = l_len;
    return result;
}
