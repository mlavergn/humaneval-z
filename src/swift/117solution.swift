func selectWords(_ s: String, n: Int) -> [String] {
    return s.split(whereSeparator: { $0.isWhitespace }).map(String.init).filter { word in
        word.lowercased().filter { !"aeiou".contains($0) }.count == n
    }
}
