bool simplify(const char *x, const char *n) {
    long long a, b, c, d;
    if (sscanf(x, "%lld/%lld", &a, &b) != 2 || sscanf(n, "%lld/%lld", &c, &d) != 2) return false;
    return (a * c) % (b * d) == 0;
}
