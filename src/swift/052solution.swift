func belowThreshold(_ l: [Int], t: Int) -> Bool {
    return l.allSatisfy { $0 < t }
}
