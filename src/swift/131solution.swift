func digits(_ n: Int) -> Int {
    let odd = String(n).compactMap { $0.wholeNumberValue }.filter { $0 % 2 == 1 }
    return odd.isEmpty ? 0 : odd.reduce(1, *)
}
