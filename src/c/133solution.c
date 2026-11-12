long long sum_squares(const double *lst, size_t lst_len) {
    long long squared = 0;
    for (size_t i = 0; i < lst_len; i++) {
        long long c = (long long)ceil(lst[i]);
        squared += c * c;
    }
    return squared;
}
