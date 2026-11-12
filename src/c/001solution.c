char **separate_paren_groups(const char *paren_string, size_t *out_len) {
    size_t n = strlen(paren_string);
    char **result = malloc((n / 2 + 1) * sizeof *result);
    char *current = malloc(n + 1);
    if (!result || !current) {
        free(result);
        free(current);
        return NULL;
    }
    size_t count = 0, len = 0;
    long long depth = 0;
    for (const char *p = paren_string; *p; p++) {
        if (*p == '(') {
            depth++;
            current[len++] = *p;
        } else if (*p == ')') {
            depth--;
            current[len++] = *p;
            if (depth == 0) {
                current[len] = '\0';
                result[count] = malloc(len + 1);
                if (!result[count]) {
                    for (size_t i = 0; i < count; i++) free(result[i]);
                    free(result);
                    free(current);
                    return NULL;
                }
                memcpy(result[count++], current, len + 1);
                len = 0;
            }
        }
    }
    free(current);
    *out_len = count;
    return result;
}
