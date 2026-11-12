pub fn chooseNum(x: i64, y: i64) i64 {
    if (x > y) return -1;
    if (@rem(y, 2) == 0) return y;
    if (x == y) return -1;
    return y - 1;
}
