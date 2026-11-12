func smallestChange(_ arr: [Int]) -> Int {
    return (0..<(arr.count / 2)).filter { arr[$0] != arr[arr.count - 1 - $0] }.count
}
