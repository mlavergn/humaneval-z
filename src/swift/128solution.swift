func prodSigns(_ arr: [Int]) -> Int? {
    if arr.isEmpty { return nil }
    if arr.contains(0) { return 0 }
    let sign = arr.filter { $0 < 0 }.count % 2 == 0 ? 1 : -1
    return sign * arr.map(abs).reduce(0, +)
}
