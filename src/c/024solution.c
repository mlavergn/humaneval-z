long long largest_divisor(long long n) {
    for (long long i = n - 1; i > 0; i--) {
        if (n % i == 0) return i;
    }
    return 0;
}
