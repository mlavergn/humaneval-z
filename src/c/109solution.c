bool move_one_ball(const long long *arr, size_t arr_len) {
    if (arr_len == 0) return true;
    size_t min_index = 0;
    for (size_t i = 1; i < arr_len; i++) {
        if (arr[i] < arr[min_index]) min_index = i;
    }
    // Sorted after rotation iff it is non-decreasing starting from the minimum.
    for (size_t k = 1; k < arr_len; k++) {
        if (arr[(min_index + k) % arr_len] < arr[(min_index + k - 1) % arr_len]) return false;
    }
    return true;
}
