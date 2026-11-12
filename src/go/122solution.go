func AddElements(arr []int, k int) int {
    sum := 0
    for _, elem := range arr[:k] {
        if len(strconv.Itoa(elem)) <= 2 {
            sum += elem
        }
    }
    return sum
}
