char *encrypt(const char *s) {
    size_t len = strlen(s);
    char *result = malloc(len + 1);
    if (!result) return NULL;
    for (size_t i = 0; i <= len; i++) {
        result[i] = islower((unsigned char)s[i]) ? (char)((s[i] - 'a' + 2 * 2) % 26 + 'a') : s[i];
    }
    return result;
}
