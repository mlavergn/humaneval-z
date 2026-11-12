func antiShuffle(_ s: String) -> String {
    return s.split(whereSeparator: { $0.isWhitespace }).map { String($0.sorted()) }.joined(separator: " ")
}
