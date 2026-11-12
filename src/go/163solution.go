func GenerateIntegers(a, b int) []int {
    min := func (a, b int) int {
        if a > b {
            return b
        }
        return a
    }
    max := func (a, b int) int {
        if a > b {
            return a
        }
        return b
    }
    lower := max(2, min(a, b))
    upper := min(8, max(a, b))
    ans := make([]int, 0)
    for i := lower;i <= upper;i++ {
        if i&1==0 {
            ans = append(ans, i)
        }
    }
    return ans
}
