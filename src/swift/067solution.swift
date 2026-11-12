func fruitDistribution(_ s: String, n: Int) -> Int {
    return n - s.split(separator: " ").compactMap { Int($0) }.reduce(0, +)
}
