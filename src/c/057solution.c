bool monotonic(const long long *l, size_t l_len) {
    bool increasing = false, decreasing = false;
    for (size_t i = 1; i < l_len; i++) {
        if (l[i] > l[i - 1]) increasing = true;
        if (l[i] < l[i - 1]) decreasing = true;
    }
    return !(increasing && decreasing);
}
