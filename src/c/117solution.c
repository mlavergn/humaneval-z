char **select_words(const char *s, long long n, size_t *out_len) {
    char **result = malloc((strlen(s) / 2 + 1) * sizeof *result);
    if (!result) return NULL;
    size_t count = 0;
    const char *p = s;
    while (true) {
        while (*p && isspace((unsigned char)*p)) p++;
        if (!*p) break;
        const char *start = p;
        long long n_consonants = 0;
        for (; *p && !isspace((unsigned char)*p); p++) {
            if (!strchr("aeiou", tolower((unsigned char)*p))) n_consonants++;
        }
        if (n_consonants != n) continue;
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
