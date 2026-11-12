func rollingMax(_ numbers: [Int]) -> [Int] {
    var result: [Int] = []
    for n in numbers {
        result.append(max(result.last ?? n, n))
    }
    return result
}
