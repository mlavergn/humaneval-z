func common(_ l1: [Int], _ l2: [Int]) -> [Int] {
    return Set(l1).intersection(l2).sorted()
}
