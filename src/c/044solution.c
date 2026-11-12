char *change_base(long long x, long long base) {
    char digits[65];
    size_t len = 0;
    do {
        digits[len++] = (char)('0' + x % base);
        x /= base;
    } while (x > 0);
    char *result = malloc(len + 1);
    if (!result) return NULL;
    for (size_t i = 0; i < len; i++) result[i] = digits[len - 1 - i];
    result[len] = '\0';
    return result;
}
