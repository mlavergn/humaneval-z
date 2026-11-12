func oddCount(_ lst: [String]) -> [String] {
    return lst.map { digits in
        let n = digits.compactMap { $0.wholeNumberValue }.filter { $0 % 2 == 1 }.count
        return "the number of odd elements \(n)n the str\(n)ng \(n) of the \(n)nput."
    }
}
