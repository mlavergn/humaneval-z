func sumSquares(_ lst: [Double]) -> Int {
    return lst.map { Int($0.rounded(.up)) }.map { $0 * $0 }.reduce(0, +)
}
