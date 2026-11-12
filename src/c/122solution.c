long long add_elements(const long long *arr, size_t arr_len, long long k) {
    long long sum = 0;
    for (size_t i = 0; i < (size_t)k && i < arr_len; i++) {
        // At most two characters when printed (a minus sign counts).
        if (arr[i] > -10 && arr[i] < 100) sum += arr[i];
    }
    return sum;
}
