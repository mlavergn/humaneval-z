func startsOneEnds(_ n: Int) -> Int {
    if n == 1 { return 1 }
    return 18 * Int(pow(10.0, Double(n - 2)))
}
