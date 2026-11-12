func sortedListSum(_ lst: [String]) -> [String] {
    return lst.filter { $0.count % 2 == 0 }.sorted { ($0.count, $0) < ($1.count, $1) }
}
