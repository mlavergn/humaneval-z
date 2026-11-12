func rescaleToUnit(_ numbers: [Double]) -> [Double] {
    let smallest = numbers.min()!, largest = numbers.max()!
    if smallest == largest { return numbers }
    return numbers.map { ($0 - smallest) / (largest - smallest) }
}
