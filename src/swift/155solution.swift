func evenOddCount(_ num: Int) -> (Int, Int) {
    let digits = String(num.magnitude).compactMap { $0.wholeNumberValue }
    let even = digits.filter { $0 % 2 == 0 }.count
    return (even, digits.count - even)
}
