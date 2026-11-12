char *decimal_to_binary(long long decimal) {
    char bits[65];
    size_t len = 0;
    unsigned long long x = (unsigned long long)decimal;
    do {
        bits[len++] = (char)('0' + (x & 1));
        x >>= 1;
    } while (x > 0);
    char *result = malloc(len + 5);
    if (!result) return NULL;
    memcpy(result, "db", 2);
    for (size_t i = 0; i < len; i++) result[2 + i] = bits[len - 1 - i];
    memcpy(result + 2 + len, "db", 3);
    return result;
}
