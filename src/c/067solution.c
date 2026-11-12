long long fruit_distribution(const char *s, long long n) {
    for (const char *p = s; *p;) {
        char *end;
        long long count = strtoll(p, &end, 10);
        if (end != p && (*end == ' ' || *end == '\0') && (p == s || p[-1] == ' ')) {
            n -= count;
            p = end;
        } else {
            p++;
        }
    }
    return n;
}
