bool is_sorted(const long long *lst, size_t lst_len) {
    for (size_t i = 1; i < lst_len; i++) {
        if (lst[i - 1] > lst[i]) return false;
        // Sorted, so more than two copies means three equal neighbours.
        if (i > 1 && lst[i - 2] == lst[i] && lst[i - 1] == lst[i]) return false;
    }
    return true;
}
