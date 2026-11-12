func pluck(_ arr: [Int]) -> (Int, Int)? {
    var result: (Int, Int)? = nil
    for (i, x) in arr.enumerated() where x % 2 == 0 {
        if result == nil || x < result!.0 { result = (x, i) }
    }
    return result
}
