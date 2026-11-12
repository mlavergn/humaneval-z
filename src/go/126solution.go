func IsSorted(lst []int) bool {
    count_digit := make(map[int]int)
    for _, i := range lst {
        count_digit[i] = 0
    }
    for _, i := range lst {
        count_digit[i]++
    }
    for _, i := range lst {
        if count_digit[i] > 2 {
            return false
        }
    }
    for i := 1;i < len(lst);i++ {
        if lst[i-1] > lst[i] {
            return false
        }
    }
    return true
}
