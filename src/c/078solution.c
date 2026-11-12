long long hex_key(const char *num) {
    long long total = 0;
    for (const char *p = num; *p; p++) {
        if (strchr("2357BD", *p)) total++;
    }
    return total;
}
