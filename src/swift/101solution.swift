func wordsString(_ s: String) -> [String] {
    return s.split(whereSeparator: { $0 == "," || $0.isWhitespace }).map(String.init)
}
