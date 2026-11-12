long long search(const long long *lst, size_t lst_len) {
    long long max = -1;
    for (size_t i = 0; i < lst_len; i++) {
        long long count = 0;
        for (size_t j = 0; j < lst_len; j++) {
            if (lst[j] == lst[i]) count++;
        }
        if (count >= lst[i] && lst[i] > max) max = lst[i];
    }
    return max;
}
