func pairsSumToZero(_ l: [Int]) -> Bool {
    for i in l.indices {
        for j in l.indices where j > i {
            if l[i] + l[j] == 0 { return true }
        }
    }
    return false
}
