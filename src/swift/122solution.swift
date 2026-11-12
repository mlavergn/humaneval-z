func addElements(_ arr: [Int], k: Int) -> Int {
    // At most two characters when printed (a minus sign counts).
    return arr.prefix(k).filter { String($0).count <= 2 }.reduce(0, +)
}
