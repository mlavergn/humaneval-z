double median(const long long *l, size_t l_len) {
    long long *sorted = malloc(l_len * sizeof *sorted);
    if (!sorted) return NAN;
    for (size_t i = 0; i < l_len; i++) {
        size_t j = i;
        while (j > 0 && sorted[j - 1] > l[i]) {
            sorted[j] = sorted[j - 1];
            j--;
        }
        sorted[j] = l[i];
    }
    size_t mid = l_len / 2;
    double result = l_len % 2 == 1 ? (double)sorted[mid] : (double)(sorted[mid - 1] + sorted[mid]) / 2.0;
    free(sorted);
    return result;
}
