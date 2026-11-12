bool prime_length(const char *s) {
    size_t l = strlen(s);
    if (l < 2) return false;
    for (size_t i = 2; i * i <= l; i++) {
        if (l % i == 0) return false;
    }
    return true;
}
