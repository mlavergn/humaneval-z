long long *parse_nested_parens(const char *paren_string, size_t *out_len) {
    size_t groups = 1;
    for (const char *p = paren_string; *p; p++) {
        if (*p == ' ') groups++;
    }
    long long *result = malloc(groups * sizeof *result);
    if (!result) return NULL;
    size_t count = 0;
    long long depth = 0, max_depth = 0;
    for (const char *p = paren_string;; p++) {
        if (*p == ' ' || *p == '\0') {
            result[count++] = max_depth;
            depth = max_depth = 0;
            if (*p == '\0') break;
        } else if (*p == '(') {
            depth++;
            if (depth > max_depth) max_depth = depth;
        } else {
            depth--;
        }
    }
    *out_len = count;
    return result;
}
