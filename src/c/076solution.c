bool is_simple_power(long long x, long long n) {
    if (x == 1) return true;
    if (n == 0 || n == 1) return false;
    if (x % n != 0) return false;
    return is_simple_power(x / n, n);
}
