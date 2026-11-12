func countDistinctCharacters(_ string: String) -> Int {
    return Set(string.lowercased()).count
}
