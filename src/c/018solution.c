long long how_many_times(const char *str, const char *substring) {
    size_t n = strlen(str), m = strlen(substring);
    if (m > n) return 0;
    long long times = 0;
    for (size_t i = 0; i + m <= n; i++) {
        if (strncmp(str + i, substring, m) == 0) times++;
    }
    return times;
}
