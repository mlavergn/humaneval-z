long long *common(const long long *l1, size_t l1_len, const long long *l2, size_t l2_len, size_t *out_len) {
    long long *result = malloc((l1_len ? l1_len : 1) * sizeof *result);
    if (!result) return NULL;
    size_t count = 0;
    for (size_t i = 0; i < l1_len; i++) {
        bool in_l2 = false;
        for (size_t j = 0; j < l2_len && !in_l2; j++) in_l2 = l2[j] == l1[i];
        if (!in_l2) continue;
        // Insert into the sorted result unless it is already there.
        size_t k = count;
        while (k > 0 && result[k - 1] > l1[i]) k--;
        if (k > 0 && result[k - 1] == l1[i]) continue;
        memmove(result + k + 1, result + k, (count - k) * sizeof *result);
        result[k] = l1[i];
        count++;
    }
    *out_len = count;
    return result;
}
