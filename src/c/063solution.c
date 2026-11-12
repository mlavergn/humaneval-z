long long fibfib(long long n) {
    long long window[3] = {0, 0, 1};
    if (n <= 0) return 0;
    if (n < 3) return window[n];
    for (long long i = 3; i <= n; i++) {
        long long next = window[0] + window[1] + window[2];
        window[0] = window[1];
        window[1] = window[2];
        window[2] = next;
    }
    return window[2];
}
