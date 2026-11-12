coord *get_row(const long long *const *lst, const size_t *lst_lens, size_t lst_len, long long x, size_t *out_len) {
    size_t total = 0;
    for (size_t i = 0; i < lst_len; i++) total += lst_lens[i];
    coord *coords = malloc((total ? total : 1) * sizeof *coords);
    if (!coords) return NULL;
    size_t count = 0;
    for (size_t i = 0; i < lst_len; i++) {
        // Columns in descending order within each row.
        for (size_t j = lst_lens[i]; j-- > 0;) {
            if (lst[i][j] == x) coords[count++] = (coord){(long long)i, (long long)j};
        }
    }
    *out_len = count;
    return coords;
}
