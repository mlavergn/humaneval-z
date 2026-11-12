func makeAPile(_ n: Int) -> [Int] {
    return (0..<max(n, 0)).map { n + 2 * $0 }
}
