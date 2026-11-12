func primeFib(_ n: Int) -> Int {
    func isPrime(_ p: Int) -> Bool {
        if p < 2 { return false }
        var i = 2
        while i * i <= p {
            if p % i == 0 { return false }
            i += 1
        }
        return true
    }
    var remaining = n
    var (a, b) = (0, 1)
    while true {
        (a, b) = (b, a + b)
        if isPrime(b) { remaining -= 1 }
        if remaining == 0 { return b }
    }
}
