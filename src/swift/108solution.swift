func countNums(_ arr: [Int]) -> Int {
    func digitsSum(_ n: Int) -> Int {
        // Sum of digits, where the first digit of a negative number is negative.
        var digits = String(abs(n)).compactMap { $0.wholeNumberValue }
        if n < 0 { digits[0] = -digits[0] }
        return digits.reduce(0, +)
    }
    return arr.filter { digitsSum($0) > 0 }.count
}
