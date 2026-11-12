long long *unique_digits(const long long *x, size_t x_len, size_t *out_len) {
    long long *result = malloc((x_len ? x_len : 1) * sizeof *result);
    if (!result) return NULL;
    size_t count = 0;
    for (size_t i = 0; i < x_len; i++) {
        bool all_odd = true;
        long long d = llabs(x[i]);
        do {
            if (d % 2 == 0) all_odd = false;
            d /= 10;
        } while (d > 0 && all_odd);
        if (!all_odd) continue;
        size_t j = count++;
        while (j > 0 && result[j - 1] > x[i]) {
            result[j] = result[j - 1];
            j--;
        }
        result[j] = x[i];
    }
    *out_len = count;
    return result;
}
