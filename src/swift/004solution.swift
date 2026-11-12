func meanAbsoluteDeviation(_ numbers: [Double]) -> Double {
    let mean = numbers.reduce(0, +) / Double(numbers.count)
    return numbers.map { abs($0 - mean) }.reduce(0, +) / Double(numbers.count)
}
