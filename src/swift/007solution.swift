func filterBySubstring(_ strings: [String], substring: String) -> [String] {
    return strings.filter { substring.isEmpty || $0.contains(substring) }
}
