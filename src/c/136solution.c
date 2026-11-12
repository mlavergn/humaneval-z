extremes largest_smallest_integers(const long long *lst, size_t lst_len) {
    extremes result = {false, 0, false, 0};
    for (size_t i = 0; i < lst_len; i++) {
        long long x = lst[i];
        if (x < 0 && (!result.has_negative || x > result.largest_negative)) {
            result.has_negative = true;
            result.largest_negative = x;
        }
        if (x > 0 && (!result.has_positive || x < result.smallest_positive)) {
            result.has_positive = true;
            result.smallest_positive = x;
        }
    }
    return result;
}
