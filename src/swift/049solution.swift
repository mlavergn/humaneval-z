func modp(_ n: Int, p: Int) -> Int {
    var ret = 1
    for _ in 0..<max(n, 0) {
        ret = (2 * ret) % p
    }
    return ret
}
