func orderByPoints(_ nums: [Int]) -> [Int] {
    func digitsSum(_ n: Int) -> Int {
        // Sum of digits, where the first digit of a negative number is negative.
        var digits = String(abs(n)).compactMap { $0.wholeNumberValue }
        if n < 0 { digits[0] = -digits[0] }
        return digits.reduce(0, +)
    }
    // Sort by (digit sum, original index) so ties keep their order.
    return nums.enumerated()
        .sorted { (digitsSum($0.element), $0.offset) < (digitsSum($1.element), $1.offset) }
        .map { $0.element }
}
