long long fib4(long long n) {
    long long window[4] = {0, 0, 2, 0};
    if (n < 4) return window[n];
    for (long long i = 4; i <= n; i++) {
        long long next = window[0] + window[1] + window[2] + window[3];
        window[0] = window[1];
        window[1] = window[2];
        window[2] = window[3];
        window[3] = next;
    }
    return window[3];
}
