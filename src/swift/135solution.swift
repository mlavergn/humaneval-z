func canArrange(_ arr: [Int]) -> Int {
    return arr.indices.dropFirst().last(where: { arr[$0] < arr[$0 - 1] }) ?? -1
}
