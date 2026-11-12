func willItFly(_ q: [Int], w: Int) -> Bool {
    return q.reduce(0, +) <= w && q == q.reversed()
}
