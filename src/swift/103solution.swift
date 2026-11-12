func roundedAvg(_ n: Int, _ m: Int) -> String? {
    if m < n { return nil }
    let rounded = Int((Double(n + m) / 2.0).rounded())
    return "0b" + String(rounded, radix: 2)
}
