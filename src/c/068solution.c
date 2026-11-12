bool pluck(const long long *arr, size_t arr_len, long long out[2]) {
    bool found = false;
    for (size_t i = 0; i < arr_len; i++) {
        if (arr[i] % 2 != 0) continue;
        if (!found || arr[i] < out[0]) {
            out[0] = arr[i];
            out[1] = (long long)i;
            found = true;
        }
    }
    return found;
}
