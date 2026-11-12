func GetPositive(l []int) []int {
    res := make([]int, 0)
    for _, x := range l {
        if x > 0 {
            res = append(res, x)
        }
    }
    return res
}
