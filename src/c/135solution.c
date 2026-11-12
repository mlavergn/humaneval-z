long long can_arrange(const long long *arr, size_t arr_len) {
    long long ind = -1;
    for (size_t i = 1; i < arr_len; i++) {
        if (arr[i] < arr[i - 1]) ind = (long long)i;
    }
    return ind;
}
