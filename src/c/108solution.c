long long count_nums(const long long *arr, size_t arr_len) {
    long long count = 0;
    for (size_t i = 0; i < arr_len; i++) {
        // Sum of digits, where the first digit of a negative number is negative.
        long long sum = 0, first = 0;
        for (long long rest = llabs(arr[i]); rest > 0; rest /= 10) {
            first = rest % 10;
            sum += first;
        }
        if (arr[i] < 0) sum -= 2 * first;
        if (sum > 0) count++;
    }
    return count;
}
