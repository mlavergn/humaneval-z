long long smallest_change(const long long *arr, size_t arr_len) {
    long long count = 0;
    for (size_t i = 0; i < arr_len / 2; i++) {
        if (arr[i] != arr[arr_len - 1 - i]) count++;
    }
    return count;
}
