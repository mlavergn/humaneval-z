func OrderByPoints(nums []int) []int {
    digits_sum := func (n int) int {
        neg := 1
        if n < 0 {
            n, neg = -1 * n, -1 
        }
        sum := 0
        for i, c := range strconv.Itoa(n) {
            if i == 0 {
                sum += int(c-'0')*neg
            } else {
                sum += int(c-'0')
            }
        }
        return sum
    }
    sort.SliceStable(nums, func(i, j int) bool {
        return digits_sum(nums[i]) < digits_sum(nums[j])
    })
    return nums
}
