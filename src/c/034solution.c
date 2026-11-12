long long *unique(const long long *l, size_t l_len, size_t *out_len) {
    long long *result = malloc((l_len ? l_len : 1) * sizeof *result);
    if (!result) return NULL;
    size_t count = 0;
    for (size_t i = 0; i < l_len; i++) {
        // Insert l[i] into the sorted prefix unless it is already there.
        size_t j = count;
        while (j > 0 && result[j - 1] > l[i]) j--;
        if (j > 0 && result[j - 1] == l[i]) continue;
        memmove(result + j + 1, result + j, (count - j) * sizeof *result);
        result[j] = l[i];
        count++;
    }
    *out_len = count;
    return result;
}
