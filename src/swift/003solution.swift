func belowZero(operations: [Int]) -> Bool {
    var balance = 0
    for op in operations {
        balance += op
        if balance < 0 { return true }
    }
    return false
}
