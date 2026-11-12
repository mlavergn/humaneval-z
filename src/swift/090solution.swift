func nextSmallest(_ lst: [Int]) -> Int? {
    let values = Set(lst).sorted()
    return values.count < 2 ? nil : values[1]
}
