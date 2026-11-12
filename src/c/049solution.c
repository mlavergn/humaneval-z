long long modp(long long n, long long p) {
    long long ret = 1;
    for (long long i = 0; i < n; i++) ret = (2 * ret) % p;
    return ret;
}
