double find_zero(const long long *xs, size_t xs_len) {
    double begin = -1.0, end = 1.0;
    while (poly(xs, xs_len, begin) * poly(xs, xs_len, end) > 0) {
        begin *= 2;
        end *= 2;
    }
    while (end - begin > 1e-10) {
        double center = (begin + end) / 2;
        if (poly(xs, xs_len, center) * poly(xs, xs_len, begin) > 0) {
            begin = center;
        } else {
            end = center;
        }
    }
    return begin;
}
