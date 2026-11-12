char *rounded_avg(long long n, long long m) {
    if (m < n) return NULL;
    unsigned long long rounded = (unsigned long long)llround((double)(n + m) / 2.0);
    char bits[65];
    size_t len = 0;
    do {
        bits[len++] = (char)('0' + (rounded & 1));
        rounded >>= 1;
    } while (rounded > 0);
    char *result = malloc(len + 3);
    if (!result) return NULL;
    memcpy(result, "0b", 2);
    for (size_t i = 0; i < len; i++) result[2 + i] = bits[len - 1 - i];
    result[2 + len] = '\0';
    return result;
}
