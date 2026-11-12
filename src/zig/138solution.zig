pub fn isEqualToSumEven(n: i64) bool {
    return @rem(n, 2) == 0 and n >= 8;
}
