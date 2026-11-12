long long digitsum(const char *x) {
    long long result = 0;
    for (const unsigned char *p = (const unsigned char *)x; *p; p++) {
        if (isupper(*p)) result += *p;
    }
    return result;
}
