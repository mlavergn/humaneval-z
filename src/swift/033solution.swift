func sortThird(_ l: [Int]) -> [Int] {
    var result = l
    let thirds = stride(from: 0, to: l.count, by: 3).map { l[$0] }.sorted()
    for (j, x) in thirds.enumerated() { result[3 * j] = x }
    return result
}
