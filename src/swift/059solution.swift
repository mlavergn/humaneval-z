func largestPrimeFactor(_ n: Int) -> Int {
    var m = n
    var largest = 1
    var i = 2
    while i * i <= m {
        if m % i == 0 {
            largest = i
            m /= i
        } else {
            i += 1
        }
    }
    return m > 1 ? max(largest, m) : largest
}
