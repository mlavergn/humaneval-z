pub fn greatestCommonDivisor(a: i64, b: i64) i64 {
    var x = a;
    var y = b;
    while (y != 0) {
        const t = @rem(x, y);
        x = y;
        y = t;
    }
    return x;
}
