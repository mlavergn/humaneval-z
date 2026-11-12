func triplesSumToZero(_ l: [Int]) -> Bool {
    for i in l.indices {
        for j in l.indices where j > i {
            for k in l.indices where k > j {
                if l[i] + l[j] + l[k] == 0 { return true }
            }
        }
    }
    return false
}
