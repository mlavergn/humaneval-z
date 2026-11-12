char **filter_by_prefix(const char *const *strings, size_t strings_len, const char *prefix, size_t *out_len) {
    char **result = malloc((strings_len ? strings_len : 1) * sizeof *result);
    if (!result) return NULL;
    size_t count = 0, prefix_len = strlen(prefix);
    for (size_t i = 0; i < strings_len; i++) {
        if (strncmp(strings[i], prefix, prefix_len) != 0) continue;
        size_t len = strlen(strings[i]);
        result[count] = malloc(len + 1);
        if (!result[count]) {
            for (size_t k = 0; k < count; k++) free(result[k]);
            free(result);
            return NULL;
        }
        memcpy(result[count++], strings[i], len + 1);
    }
    *out_len = count;
    return result;
}
