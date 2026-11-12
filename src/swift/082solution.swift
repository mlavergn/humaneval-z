func primeLength(_ string: String) -> Bool {
    let l = string.count
    if l < 2 { return false }
    var i = 2
    while i * i <= l {
        if l % i == 0 { return false }
        i += 1
    }
    return true
}
