func circularShift(_ x: Int, shift: Int) -> String {
    let s = String(x)
    if shift > s.count { return String(s.reversed()) }
    let split = s.index(s.endIndex, offsetBy: -shift)
    return String(s[split...] + s[..<split])
}
