func factorize(_ n: Int) -> [Int] {
    var factors: [Int] = []
    var m = n
    var i = 2
    while i * i <= m {
        if m % i == 0 {
            factors.append(i)
            m /= i
        } else {
            i += 1
        }
    }
    if m > 1 { factors.append(m) }
    return factors
}
