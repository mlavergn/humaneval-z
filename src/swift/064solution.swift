func vowelsCount(_ s: String) -> Int {
    let lower = s.lowercased()
    var count = lower.filter { "aeiou".contains($0) }.count
    if lower.last == "y" { count += 1 }
    return count
}
