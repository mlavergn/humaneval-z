func longest(_ strings: [String]) -> String? {
    guard var best = strings.first else { return nil }
    for s in strings where s.count > best.count {
        best = s
    }
    return best
}
