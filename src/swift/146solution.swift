func specialfilter(_ nums: [Int]) -> Int {
    return nums.filter { num in
        let s = String(num)
        return num > 10 && s.first!.wholeNumberValue! % 2 == 1 && s.last!.wholeNumberValue! % 2 == 1
    }.count
}
