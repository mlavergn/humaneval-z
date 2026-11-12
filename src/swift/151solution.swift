func doubleTheDifference(_ lst: [Double]) -> Int {
    return lst.filter { $0 > 0 && $0 == $0.rounded(.towardZero) && $0.truncatingRemainder(dividingBy: 2) != 0 }
        .map { Int($0) * Int($0) }
        .reduce(0, +)
}
