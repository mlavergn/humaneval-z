long long *sort_third(const long long *l, size_t l_len, size_t *out_len) {
    long long *result = malloc((l_len ? l_len : 1) * sizeof *result);
    if (!result) return NULL;
    if (l_len) memcpy(result, l, l_len * sizeof *l);
    // Insertion sort over the indices divisible by three.
    for (size_t i = 3; i < l_len; i += 3) {
        long long x = result[i];
        size_t j = i;
        while (j >= 3 && result[j - 3] > x) {
            result[j] = result[j - 3];
            j -= 3;
        }
        result[j] = x;
    }
    *out_len = l_len;
    return result;
}
