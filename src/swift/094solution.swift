func skjkasdkd(_ lst: [Int]) -> Int {
    func isPrime(_ n: Int) -> Bool {
        if n < 2 { return false }
        var i = 2
        while i * i <= n {
            if n % i == 0 { return false }
            i += 1
        }
        return true
    }
    let maxx = lst.filter(isPrime).max() ?? 0
    return String(maxx).compactMap { $0.wholeNumberValue }.reduce(0, +)
}
