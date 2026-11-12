func isBored(_ s: String) -> Int {
    return s.split(omittingEmptySubsequences: false, whereSeparator: { ".?!".contains($0) })
        .filter { $0.drop(while: { $0.isWhitespace }).hasPrefix("I ") }
        .count
}
