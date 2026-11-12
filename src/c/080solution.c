bool is_happy(const char *s) {
    size_t len = strlen(s);
    if (len < 3) return false;
    for (size_t i = 0; i + 2 < len; i++) {
        if (s[i] == s[i + 1] || s[i + 1] == s[i + 2] || s[i] == s[i + 2]) return false;
    }
    return true;
}
