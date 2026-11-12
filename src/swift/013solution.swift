func greatestCommonDivisor(_ a: Int, _ b: Int) -> Int {
    var (x, y) = (a, b)
    while y != 0 {
        (x, y) = (y, x % y)
    }
    return x
}
