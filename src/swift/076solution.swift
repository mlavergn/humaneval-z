func isSimplePower(_ x: Int, n: Int) -> Bool {
    if x == 1 { return true }
    if n == 0 || n == 1 { return false }
    if x % n != 0 { return false }
    return isSimplePower(x / n, n: n)
}
