long long double_the_difference(const double *lst, size_t lst_len) {
    long long sum = 0;
    for (size_t i = 0; i < lst_len; i++) {
        double x = lst[i];
        if (x > 0 && x == trunc(x) && fmod(x, 2) != 0) {
            long long n = (long long)x;
            sum += n * n;
        }
    }
    return sum;
}
