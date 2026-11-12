long long *filter_integers(const value *values, size_t values_len, size_t *out_len) {
    long long *result = malloc((values_len ? values_len : 1) * sizeof *result);
    if (!result) return NULL;
    size_t count = 0;
    for (size_t i = 0; i < values_len; i++) {
        if (values[i].kind == VALUE_INT) result[count++] = values[i].as.i;
    }
    *out_len = count;
    return result;
}
