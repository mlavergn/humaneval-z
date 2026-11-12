bool cycpattern_check(const char *a, const char *b) {
    size_t n = strlen(a), l = strlen(b);
    if (l == 0) return true;
    for (size_t i = 0; i + l <= n; i++) {
        for (size_t shift = 0; shift < l; shift++) {
            size_t k = 0;
            while (k < l && a[i + k] == b[(shift + k) % l]) k++;
            if (k == l) return true;
        }
    }
    return false;
}
