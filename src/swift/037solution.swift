func sortEven(_ l: [Int]) -> [Int] {
    var result = l
    let evens = stride(from: 0, to: l.count, by: 2).map { l[$0] }.sorted()
    for (j, x) in evens.enumerated() { result[2 * j] = x }
    return result
}
