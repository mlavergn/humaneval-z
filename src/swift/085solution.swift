func add(_ lst: [Int]) -> Int {
    return stride(from: 1, to: lst.count, by: 2).map { lst[$0] }.filter { $0 % 2 == 0 }.reduce(0, +)
}
