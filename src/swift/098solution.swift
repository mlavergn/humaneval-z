func countUpper(_ s: String) -> Int {
    return Array(s).enumerated().filter { $0.offset % 2 == 0 && "AEIOU".contains($0.element) }.count
}
