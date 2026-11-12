func moveOneBall(_ arr: [Int]) -> Bool {
    guard let minIndex = arr.indices.min(by: { arr[$0] < arr[$1] }) else { return true }
    let rotated = Array(arr[minIndex...] + arr[..<minIndex])
    return rotated == arr.sorted()
}
