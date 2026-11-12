func isHappy(_ s: String) -> Bool {
    let c = Array(s)
    if c.count < 3 { return false }
    for i in 0..<(c.count - 2) {
        if c[i] == c[i + 1] || c[i + 1] == c[i + 2] || c[i] == c[i + 2] { return false }
    }
    return true
}
