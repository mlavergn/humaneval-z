func solve(_ n: Int) -> String {
    let sum = String(abs(n)).compactMap { $0.wholeNumberValue }.reduce(0, +)
    return String(sum, radix: 2)
}
