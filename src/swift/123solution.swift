func getOddCollatz(_ n: Int) -> [Int] {
    var odd: [Int] = n % 2 == 1 ? [n] : []
    var x = n
    while x > 1 {
        x = x % 2 == 0 ? x / 2 : 3 * x + 1
        if x % 2 == 1 { odd.append(x) }
    }
    return odd.sorted()
}
