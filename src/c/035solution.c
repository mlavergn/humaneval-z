long long max_element(const long long *l, size_t l_len) {
    long long max = l[0];
    for (size_t i = 0; i < l_len; i++) {
        if (l[i] > max) max = l[i];
    }
    return max;
}
