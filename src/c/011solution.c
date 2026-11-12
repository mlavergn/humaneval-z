char *string_xor(const char *a, const char *b) {
    size_t len = strlen(a);
    char *result = malloc(len + 1);
    if (!result) return NULL;
    for (size_t i = 0; i < len; i++) result[i] = a[i] == b[i] ? '0' : '1';
    result[len] = '\0';
    return result;
}
