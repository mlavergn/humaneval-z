char **filter_by_substring(const char *const *string_list, size_t string_list_len, const char *substring, size_t *out_len) {
    char **result = malloc((string_list_len ? string_list_len : 1) * sizeof *result);
    if (!result) return NULL;
    size_t count = 0;
    for (size_t i = 0; i < string_list_len; i++) {
        if (!strstr(string_list[i], substring)) continue;
        size_t len = strlen(string_list[i]);
        result[count] = malloc(len + 1);
        if (!result[count]) {
            for (size_t k = 0; k < count; k++) free(result[k]);
            free(result);
            return NULL;
        }
        memcpy(result[count++], string_list[i], len + 1);
    }
    *out_len = count;
    return result;
}
