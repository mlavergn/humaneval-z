pub fn isSimplePower(x: i64, n: i64) bool {
    if (x == 1) return true;
    if (n == 1 or n == 0) return false;
    if (@rem(x, n) != 0) return false;
    return isSimplePower(@divTrunc(x, n), n);
}
