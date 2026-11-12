func isMultiplyPrime(_ a: Int) -> Bool {
    let primes = (2..<101).filter { n in (2..<n).allSatisfy { n % $0 != 0 } }
    for i in primes {
        for j in primes {
            for k in primes where i * j * k == a {
                return true
            }
        }
    }
    return false
}
