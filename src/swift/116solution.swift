func sortArray(_ arr: [Int]) -> [Int] {
    return arr.sorted { a, b in
        let onesA = abs(a).nonzeroBitCount, onesB = abs(b).nonzeroBitCount
        return onesA != onesB ? onesA < onesB : a < b
    }
}
