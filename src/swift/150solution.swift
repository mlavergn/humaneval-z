func xOrY(_ n: Int, x: Int, y: Int) -> Int {
    if n < 2 { return y }
    var i = 2
    while i * i <= n {
        if n % i == 0 { return y }
        i += 1
    }
    return x
}
