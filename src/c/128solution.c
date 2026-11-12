bool prod_signs(const long long *arr, size_t arr_len, long long *out) {
    if (arr_len == 0) return false;
    long long sign = 1, sum = 0;
    for (size_t i = 0; i < arr_len; i++) {
        if (arr[i] == 0) sign = 0;
        if (arr[i] < 0) sign = -sign;
        sum += llabs(arr[i]);
    }
    *out = sign * sum;
    return true;
}
