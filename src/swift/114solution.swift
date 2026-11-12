func minsubarraysum(_ nums: [Int]) -> Int {
    var maxSum = 0, s = 0
    for num in nums {
        s = max(s - num, 0)
        maxSum = max(maxSum, s)
    }
    if maxSum == 0 { maxSum = nums.map { -$0 }.max()! }
    return -maxSum
}
