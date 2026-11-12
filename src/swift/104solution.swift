func uniqueDigits(_ x: [Int]) -> [Int] {
    return x.filter { n in String(abs(n)).allSatisfy { $0.wholeNumberValue! % 2 == 1 } }.sorted()
}
