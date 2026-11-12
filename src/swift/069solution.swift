func search(_ lst: [Int]) -> Int {
    var counts: [Int: Int] = [:]
    for x in lst { counts[x, default: 0] += 1 }
    return counts.filter { $0.value >= $0.key }.keys.max() ?? -1
}
