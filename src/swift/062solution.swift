func derivative(_ xs: [Int]) -> [Int] {
    return xs.indices.dropFirst().map { xs[$0] * $0 }
}
