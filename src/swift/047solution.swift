func median(_ l: [Int]) -> Double {
    let sorted = l.sorted()
    let mid = sorted.count / 2
    if sorted.count % 2 == 1 { return Double(sorted[mid]) }
    return Double(sorted[mid - 1] + sorted[mid]) / 2.0
}
