bool below_threshold(const long long *l, size_t l_len, long long t) {
    for (size_t i = 0; i < l_len; i++) {
        if (l[i] >= t) return false;
    }
    return true;
}
