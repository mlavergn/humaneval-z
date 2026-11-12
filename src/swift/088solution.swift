func sortArray(_ array: [Int]) -> [Int] {
    guard let first = array.first, let last = array.last else { return [] }
    return (first + last) % 2 == 0 ? array.sorted(by: >) : array.sorted()
}
