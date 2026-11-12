func sumSquares(_ lst: [Int]) -> Int {
    return lst.enumerated().map { i, x in i % 3 == 0 ? x * x : i % 4 == 0 ? x * x * x : x }.reduce(0, +)
}
