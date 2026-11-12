func maximum(_ arr: [Int], k: Int) -> [Int] {
    return Array(arr.sorted().suffix(k))
}
