char *solve(long long n) {
    unsigned long long sum = 0;
    for (unsigned long long x = (unsigned long long)llabs(n); x > 0; x /= 10) sum += x % 10;
    char bits[65];
    size_t len = 0;
    do {
        bits[len++] = (char)('0' + (sum & 1));
        sum >>= 1;
    } while (sum > 0);
    char *result = malloc(len + 1);
    if (!result) return NULL;
    for (size_t i = 0; i < len; i++) result[i] = bits[len - 1 - i];
    result[len] = '\0';
    return result;
}
