long long sum_squares(const long long *lst, size_t lst_len) {
    long long sum = 0;
    for (size_t i = 0; i < lst_len; i++) {
        long long x = lst[i];
        sum += i % 3 == 0 ? x * x : i % 4 == 0 ? x * x * x : x;
    }
    return sum;
}
