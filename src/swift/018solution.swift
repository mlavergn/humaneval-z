func howManyTimes(_ string: String, substring: String) -> Int {
    let s = Array(string), sub = Array(substring)
    guard sub.count <= s.count else { return 0 }
    return (0...(s.count - sub.count)).filter { Array(s[$0..<($0 + sub.count)]) == sub }.count
}
