char **all_prefixes(const char *str, size_t *out_len) {
    size_t len = strlen(str);
    char **prefixes = malloc((len ? len : 1) * sizeof *prefixes);
    if (!prefixes) return NULL;
    for (size_t i = 0; i < len; i++) {
        prefixes[i] = malloc(i + 2);
        if (!prefixes[i]) {
            for (size_t k = 0; k < i; k++) free(prefixes[k]);
            free(prefixes);
            return NULL;
        }
        memcpy(prefixes[i], str, i + 1);
        prefixes[i][i + 1] = '\0';
    }
    *out_len = len;
    return prefixes;
}
