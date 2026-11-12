pub fn findZero(xs: []const i64) f64 {
    var begin: f64 = -1.0;
    var end: f64 = 1.0;
    while (poly(xs, begin) * poly(xs, end) > 0) {
        begin *= 2;
        end *= 2;
    }
    while (end - begin > 1e-10) {
        const center = (begin + end) / 2;
        if (poly(xs, center) * poly(xs, begin) > 0) {
            begin = center;
        } else {
            end = center;
        }
    }
    return begin;
}
