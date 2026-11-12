long long count_distinct_characters(const char *str) {
    bool seen[256] = {false};
    long long count = 0;
    for (const unsigned char *p = (const unsigned char *)str; *p; p++) {
        unsigned char lower = (unsigned char)tolower(*p);
        if (!seen[lower]) {
            seen[lower] = true;
            count++;
        }
    }
    return count;
}
