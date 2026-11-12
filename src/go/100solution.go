func MakeAPile(n int) []int {
    result := make([]int, 0, n)
    for i := 0; i < n; i++ {
        result = append(result, n+2*i)
    }
    return result
}
