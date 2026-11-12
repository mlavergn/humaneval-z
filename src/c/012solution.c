char *longest(const char *const *strings, size_t strings_len) {
    if (strings_len == 0) return NULL;
    size_t maxi = 0;
    for (size_t i = 0; i < strings_len; i++) {
        if (strlen(strings[maxi]) < strlen(strings[i])) maxi = i;
    }
    size_t len = strlen(strings[maxi]);
    char *result = malloc(len + 1);
    if (!result) return NULL;
    memcpy(result, strings[maxi], len + 1);
    return result;
}
