pub fn modp(n: i64, p: i64) i64 {
    var ret: i64 = 1;
    var i: i64 = 0;
    while (i < n) : (i += 1) ret = @rem(2 * ret, p);
    return ret;
}
