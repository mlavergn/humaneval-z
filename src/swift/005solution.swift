func intersperse(_ numbers: [Int], delimeter: Int) -> [Int] {
    var result: [Int] = []
    for (i, n) in numbers.enumerated() {
        if i > 0 { result.append(delimeter) }
        result.append(n)
    }
    return result
}
