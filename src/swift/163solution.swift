func generateIntegers(_ a: Int, _ b: Int) -> [Int] {
    let lower = max(2, min(a, b)), upper = min(8, max(a, b))
    return lower <= upper ? (lower...upper).filter { $0 % 2 == 0 } : []
}
