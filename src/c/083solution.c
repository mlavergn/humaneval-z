long long starts_one_ends(long long n) {
    if (n == 1) return 1;
    long long result = 18;
    for (long long i = 2; i < n; i++) result *= 10;
    return result;
}
