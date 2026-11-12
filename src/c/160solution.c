long long do_algebra(const char *const *operator, size_t operator_len, const long long *operand, size_t operand_len) {
    const char **ops = malloc((operator_len ? operator_len : 1) * sizeof *ops);
    long long *vals = malloc((operand_len ? operand_len : 1) * sizeof *vals);
    if (!ops || !vals) {
        free(ops);
        free(vals);
        return 0;
    }
    memcpy(ops, operator, operator_len * sizeof *ops);
    memcpy(vals, operand, operand_len * sizeof *vals);
    size_t n_ops = operator_len;
    while (n_ops > 0) {
        // Leftmost of *, //, ** first; otherwise the leftmost operator.
        size_t pos = 0;
        for (size_t i = 0; i < n_ops; i++) {
            if (strcmp(ops[i], "*") == 0 || strcmp(ops[i], "//") == 0 || strcmp(ops[i], "**") == 0) {
                pos = i;
                break;
            }
        }
        long long a = vals[pos], b = vals[pos + 1], r = 0;
        if (strcmp(ops[pos], "+") == 0) {
            r = a + b;
        } else if (strcmp(ops[pos], "-") == 0) {
            r = a - b;
        } else if (strcmp(ops[pos], "*") == 0) {
            r = a * b;
        } else if (strcmp(ops[pos], "//") == 0) {
            r = a / b;
        } else if (strcmp(ops[pos], "**") == 0) {
            r = 1;
            for (long long k = 0; k < b; k++) r *= a;
        }
        vals[pos] = r;
        memmove(ops + pos, ops + pos + 1, (n_ops - pos - 1) * sizeof *ops);
        memmove(vals + pos + 1, vals + pos + 2, (n_ops - pos - 1) * sizeof *vals);
        n_ops--;
    }
    long long result = vals[0];
    free(ops);
    free(vals);
    return result;
}
