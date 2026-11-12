char *concatenate(const char *const *strings, size_t strings_len) {
    size_t total = 0;
    for (size_t i = 0; i < strings_len; i++) total += strlen(strings[i]);
    char *result = malloc(total + 1);
    if (!result) return NULL;
    size_t len = 0;
    for (size_t i = 0; i < strings_len; i++) {
        size_t n = strlen(strings[i]);
        memcpy(result + len, strings[i], n);
        len += n;
    }
    result[len] = '\0';
    return result;
}
