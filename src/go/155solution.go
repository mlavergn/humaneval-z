func EvenOddCount(num int) [2]int {
    even_count := 0
    odd_count := 0
    if num < 0 {
        num = -num
    }
    for _, r := range strconv.Itoa(num) {
        if r&1==0 {
            even_count++
        } else {
            odd_count++
        }
    }
    return [2]int{even_count, odd_count}
}
