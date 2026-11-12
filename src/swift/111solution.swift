func histogram(_ test: String) -> [Character: Int] {
    var counts: [Character: Int] = [:]
    for word in test.split(whereSeparator: { $0.isWhitespace }) {
        counts[word.first!, default: 0] += 1
    }
    guard let maxCount = counts.values.max() else { return [:] }
    return counts.filter { $0.value == maxCount }
}
