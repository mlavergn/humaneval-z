char *decode_shift(const char *s) {
    size_t len = strlen(s);
    char *result = malloc(len + 1);
    if (!result) return NULL;
    for (size_t i = 0; i < len; i++) result[i] = (char)((s[i] - 'a' + 21) % 26 + 'a');
    result[len] = '\0';
    return result;
}
