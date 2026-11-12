char *circular_shift(long long x, long long shift) {
    char s[24];
    int n = snprintf(s, sizeof s, "%lld", x);
    size_t len = (size_t)n;
    char *result = malloc(len + 1);
    if (!result) return NULL;
    for (size_t i = 0; i < len; i++) {
        result[i] = shift > n ? s[len - 1 - i] : s[(i + len - (size_t)shift) % len];
    }
    result[len] = '\0';
    return result;
}
