char *int_to_mini_roman(long long number) {
    static const long long num[] = {1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1};
    static const char *const sym[] = {"m", "cm", "d", "cd", "c", "xc", "l", "xl", "x", "ix", "v", "iv", "i"};
    char buf[64];
    size_t len = 0;
    for (size_t i = 0; i < 13; i++) {
        for (; number >= num[i] && len + 2 < sizeof buf; number -= num[i]) {
            size_t n = strlen(sym[i]);
            memcpy(buf + len, sym[i], n);
            len += n;
        }
    }
    char *result = malloc(len + 1);
    if (!result) return NULL;
    memcpy(result, buf, len);
    result[len] = '\0';
    return result;
}
