func countUpTo(_ n: Int) -> [Int] {
    var primes: [Int] = []
    var i = 2
    while i < n {
        if primes.allSatisfy({ i % $0 != 0 }) { primes.append(i) }
        i += 1
    }
    return primes
}
