func largestDivisor(_ n: Int) -> Int {
    for i in stride(from: n - 1, to: 0, by: -1) where n % i == 0 {
        return i
    }
    return 0
}
