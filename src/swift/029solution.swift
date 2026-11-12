func filterByPrefix(_ strings: [String], prefix: String) -> [String] {
    return strings.filter { $0.hasPrefix(prefix) }
}
