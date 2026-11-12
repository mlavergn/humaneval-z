func findMax(_ words: [String]) -> String {
    return words.min { (-Set($0).count, $0) < (-Set($1).count, $1) }!
}
