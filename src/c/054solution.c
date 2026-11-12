bool same_chars(const char *s0, const char *s1) {
    bool set0[256] = {false}, set1[256] = {false};
    for (const unsigned char *p = (const unsigned char *)s0; *p; p++) set0[*p] = true;
    for (const unsigned char *p = (const unsigned char *)s1; *p; p++) set1[*p] = true;
    return memcmp(set0, set1, sizeof set0) == 0;
}
