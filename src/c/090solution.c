bool next_smallest(const long long *lst, size_t lst_len, long long *out) {
    bool have_min = false, have_next = false;
    long long min = 0, next = 0;
    for (size_t i = 0; i < lst_len; i++) {
        long long x = lst[i];
        if (!have_min || x < min) {
            if (have_min) {
                next = min;
                have_next = true;
            }
            min = x;
            have_min = true;
        } else if (x != min && (!have_next || x < next)) {
            next = x;
            have_next = true;
        }
    }
    if (have_next) *out = next;
    return have_next;
}
