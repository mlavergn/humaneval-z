long long skjkasdkd(const long long *lst, size_t lst_len) {
    long long maxx = 0;
    for (size_t i = 0; i < lst_len; i++) {
        long long x = lst[i];
        bool prime = x >= 2;
        for (long long d = 2; prime && d * d <= x; d++) {
            if (x % d == 0) prime = false;
        }
        if (prime && x > maxx) maxx = x;
    }
    long long sum = 0;
    for (; maxx > 0; maxx /= 10) sum += maxx % 10;
    return sum;
}
