bool any_int(value x, value y, value z) {
    if (x.kind != VALUE_INT || y.kind != VALUE_INT || z.kind != VALUE_INT) return false;
    long long a = x.as.i, b = y.as.i, c = z.as.i;
    return a + b == c || a + c == b || b + c == a;
}
