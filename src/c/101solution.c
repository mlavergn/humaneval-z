char **words_string(const char *s, size_t *out_len) {
    size_t cap = strlen(s) / 2 + 1;
    char **result = malloc(cap * sizeof *result);
    if (!result) return NULL;
    size_t count = 0;
    const char *p = s;
    while (true) {
        while (*p && (*p == ',' || isspace((unsigned char)*p))) p++;
        if (!*p) break;
        const char *start = p;
        while (*p && *p != ',' && !isspace((unsigned char)*p)) p++;
        size_t len = (size_t)(p - start);
        result[count] = malloc(len + 1);
        if (!result[count]) {
            for (size_t k = 0; k < count; k++) free(result[k]);
            free(result);
            return NULL;
        }
        memcpy(result[count], start, len);
        result[count++][len] = '\0';
    }
    *out_len = count;
    return result;
}
